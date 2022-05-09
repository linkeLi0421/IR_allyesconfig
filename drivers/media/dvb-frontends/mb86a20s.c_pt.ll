; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/mb86a20s.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/mb86a20s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mb86a20s_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_mb86a20s_attach\09\09\09\09"
module asm "\09.long\09__crc_mb86a20s_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mb86a20s_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mb86a20s_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mb86a20s_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regdata = type { i8, i8 }
%struct.linear_segments = type { i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mb86a20s_state = type { ptr, ptr, i32, %struct.dvb_frontend, i32, i32, i8, i32, [3 x i32], i32, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mb86a20s_config = type { i32, i8, i8 }

@mb86a20s_attach.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 2, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mb86a20s\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb86a20s_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/mb86a20s.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s called.\0A\00", [20 x i8] zeroinitializer }, align 32
@mb86a20s_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Fujitsu mb86A20s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 864000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 1075523246 }, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr null, ptr @mb86a20s_release, ptr null, ptr @mb86a20s_initfe, ptr null, ptr null, ptr null, ptr null, ptr @mb86a20s_tune, ptr @mb86a20s_get_frontend_algo, ptr @mb86a20s_set_frontend, ptr null, ptr null, ptr @mb86a20s_read_status_and_stats, ptr null, ptr @mb86a20s_read_signal_strength_from_cache, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@mb86a20s_attach.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 2, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Frontend revision %d is unknown - aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@mb86a20s_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 2081, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Detected a Fujitsu mb86a20s frontend\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mb86a20s_attach._entry_ptr = internal global ptr @mb86a20s_attach._entry, section ".printk_index", align 4
@__kstrtab_mb86a20s_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mb86a20s_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mb86a20s_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mb86a20s_attach to i32), ptr @__kstrtab_mb86a20s_attach, ptr @__kstrtabns_mb86a20s_attach }, section "___ksymtab+mb86a20s_attach", align 4
@__UNIQUE_ID_description334 = internal constant [71 x i8] c"mb86a20s.description=DVB Frontend module for Fujitsu mb86A20s hardware\00", section ".modinfo", align 1
@__UNIQUE_ID_author335 = internal constant [38 x i8] c"mb86a20s.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [51 x i8] c"mb86a20s.file=drivers/media/dvb-frontends/mb86a20s\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [21 x i8] c"mb86a20s.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mb86a20s_i2c_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 260, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: reg=0x%x (error=%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mb86a20s_i2c_readreg\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mb86a20s_i2c_readreg._entry_ptr = internal global ptr @mb86a20s_i2c_readreg._entry, section ".printk_index", align 4
@mb86a20s_release.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.3, i8 1, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mb86a20s_release\00", [47 x i8] zeroinitializer }, align 32
@mb86a20s_initfe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.3, i8 1, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mb86a20s_initfe\00", [16 x i8] zeroinitializer }, align 32
@mb86a20s_initfe.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 1, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: fclk=%d, IF=%d, clock reg=0x%06llx\0A\00", [56 x i8] zeroinitializer }, align 32
@mb86a20s_initfe.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 1, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: IF=%d, IF reg=0x%06llx\0A\00", [36 x i8] zeroinitializer }, align 32
@mb86a20s_init2 = internal global { [231 x %struct.regdata], [114 x i8] } { [231 x %struct.regdata] [%struct.regdata { i8 80, i8 -47 }, %struct.regdata { i8 81, i8 34 }, %struct.regdata { i8 57, i8 1 }, %struct.regdata { i8 113, i8 0 }, %struct.regdata { i8 59, i8 33 }, %struct.regdata { i8 60, i8 58 }, %struct.regdata { i8 1, i8 13 }, %struct.regdata { i8 4, i8 8 }, %struct.regdata { i8 5, i8 5 }, %struct.regdata { i8 4, i8 14 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 15 }, %struct.regdata { i8 5, i8 20 }, %struct.regdata { i8 4, i8 11 }, %struct.regdata { i8 5, i8 -116 }, %struct.regdata { i8 4, i8 0 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 1 }, %struct.regdata { i8 5, i8 7 }, %struct.regdata { i8 4, i8 2 }, %struct.regdata { i8 5, i8 15 }, %struct.regdata { i8 4, i8 3 }, %struct.regdata { i8 5, i8 -96 }, %struct.regdata { i8 4, i8 9 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 10 }, %struct.regdata { i8 5, i8 -1 }, %struct.regdata { i8 4, i8 39 }, %struct.regdata { i8 5, i8 100 }, %struct.regdata { i8 4, i8 40 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 30 }, %struct.regdata { i8 5, i8 -1 }, %struct.regdata { i8 4, i8 41 }, %struct.regdata { i8 5, i8 10 }, %struct.regdata { i8 4, i8 50 }, %struct.regdata { i8 5, i8 10 }, %struct.regdata { i8 4, i8 20 }, %struct.regdata { i8 5, i8 2 }, %struct.regdata { i8 4, i8 4 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 5 }, %struct.regdata { i8 5, i8 34 }, %struct.regdata { i8 4, i8 6 }, %struct.regdata { i8 5, i8 14 }, %struct.regdata { i8 4, i8 7 }, %struct.regdata { i8 5, i8 -40 }, %struct.regdata { i8 4, i8 18 }, %struct.regdata { i8 5, i8 0 }, %struct.regdata { i8 4, i8 19 }, %struct.regdata { i8 5, i8 -1 }, %struct.regdata { i8 82, i8 1 }, %struct.regdata { i8 80, i8 -89 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -88 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -87 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -86 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -85 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -84 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -83 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -82 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 80, i8 -81 }, %struct.regdata { i8 81, i8 -1 }, %struct.regdata { i8 94, i8 7 }, %struct.regdata { i8 80, i8 -36 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -35 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -34 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -33 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -32 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -31 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -80 }, %struct.regdata { i8 81, i8 7 }, %struct.regdata { i8 80, i8 -78 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -77 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -76 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -75 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 -74 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 -73 }, %struct.regdata { i8 81, i8 127 }, %struct.regdata { i8 80, i8 80 }, %struct.regdata { i8 81, i8 2 }, %struct.regdata { i8 80, i8 81 }, %struct.regdata { i8 81, i8 4 }, %struct.regdata { i8 69, i8 4 }, %struct.regdata { i8 72, i8 4 }, %struct.regdata { i8 80, i8 -43 }, %struct.regdata { i8 81, i8 1 }, %struct.regdata { i8 80, i8 -42 }, %struct.regdata { i8 81, i8 31 }, %struct.regdata { i8 80, i8 -46 }, %struct.regdata { i8 81, i8 3 }, %struct.regdata { i8 80, i8 -41 }, %struct.regdata { i8 81, i8 63 }, %struct.regdata { i8 28, i8 1 }, %struct.regdata { i8 40, i8 6 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 3 }, %struct.regdata { i8 40, i8 7 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 13 }, %struct.regdata { i8 40, i8 8 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 2 }, %struct.regdata { i8 40, i8 9 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 1 }, %struct.regdata { i8 40, i8 10 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 33 }, %struct.regdata { i8 40, i8 11 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 41 }, %struct.regdata { i8 40, i8 12 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 22 }, %struct.regdata { i8 40, i8 13 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 49 }, %struct.regdata { i8 40, i8 14 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 14 }, %struct.regdata { i8 40, i8 15 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 78 }, %struct.regdata { i8 40, i8 16 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 70 }, %struct.regdata { i8 40, i8 17 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 15 }, %struct.regdata { i8 40, i8 18 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 86 }, %struct.regdata { i8 40, i8 19 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 53 }, %struct.regdata { i8 40, i8 20 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 1 }, %struct.regdata { i8 43, i8 -66 }, %struct.regdata { i8 40, i8 21 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 1 }, %struct.regdata { i8 43, i8 -124 }, %struct.regdata { i8 40, i8 22 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 3 }, %struct.regdata { i8 43, i8 -18 }, %struct.regdata { i8 40, i8 23 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 -104 }, %struct.regdata { i8 40, i8 24 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 0 }, %struct.regdata { i8 43, i8 -97 }, %struct.regdata { i8 40, i8 25 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 7 }, %struct.regdata { i8 43, i8 -78 }, %struct.regdata { i8 40, i8 26 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 6 }, %struct.regdata { i8 43, i8 -62 }, %struct.regdata { i8 40, i8 27 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 7 }, %struct.regdata { i8 43, i8 74 }, %struct.regdata { i8 40, i8 28 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 1 }, %struct.regdata { i8 43, i8 -68 }, %struct.regdata { i8 40, i8 29 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 4 }, %struct.regdata { i8 43, i8 -70 }, %struct.regdata { i8 40, i8 30 }, %struct.regdata { i8 41, i8 0 }, %struct.regdata { i8 42, i8 6 }, %struct.regdata { i8 43, i8 20 }, %struct.regdata { i8 80, i8 30 }, %struct.regdata { i8 81, i8 93 }, %struct.regdata { i8 80, i8 34 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 35 }, %struct.regdata { i8 81, i8 -56 }, %struct.regdata { i8 80, i8 36 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 37 }, %struct.regdata { i8 81, i8 -16 }, %struct.regdata { i8 80, i8 38 }, %struct.regdata { i8 81, i8 0 }, %struct.regdata { i8 80, i8 39 }, %struct.regdata { i8 81, i8 -61 }, %struct.regdata { i8 80, i8 57 }, %struct.regdata { i8 81, i8 2 }, %struct.regdata { i8 80, i8 -43 }, %struct.regdata { i8 81, i8 1 }, %struct.regdata { i8 -48, i8 0 }], [114 x i8] zeroinitializer }, align 32
@mb86a20s_initfe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.12, ptr @.str.2, i32 1852, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mb86a20s: Init failed. Will try again later\0A\00", [51 x i8] zeroinitializer }, align 32
@mb86a20s_initfe._entry_ptr = internal global ptr @mb86a20s_initfe._entry, section ".printk_index", align 4
@mb86a20s_initfe.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 1, i8 -49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Initialization succeeded.\0A\00", [37 x i8] zeroinitializer }, align 32
@mb86a20s_i2c_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 225, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: writereg error (rc == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb86a20s_i2c_writereg\00", [42 x i8] zeroinitializer }, align 32
@mb86a20s_i2c_writereg._entry_ptr = internal global ptr @mb86a20s_i2c_writereg._entry, section ".printk_index", align 4
@mb86a20s_tune.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.3, i8 1, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mb86a20s_tune\00", [18 x i8] zeroinitializer }, align 32
@mb86a20s_set_frontend.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.3, i8 1, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb86a20s_set_frontend\00", [42 x i8] zeroinitializer }, align 32
@mb86a20s_subchannel = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\B0\C0\D0\E0\F0\00\10 ", [24 x i8] zeroinitializer }, align 32
@mb86a20s_reset_counters.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.2, ptr @.str.3, i8 0, i8 -73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mb86a20s_reset_counters\00", [40 x i8] zeroinitializer }, align 32
@mb86a20s_per_ber_reset = internal constant { [7 x %struct.regdata], [18 x i8] } { [7 x %struct.regdata] [%struct.regdata { i8 83, i8 0 }, %struct.regdata { i8 83, i8 7 }, %struct.regdata { i8 95, i8 0 }, %struct.regdata { i8 95, i8 7 }, %struct.regdata { i8 80, i8 -79 }, %struct.regdata { i8 81, i8 7 }, %struct.regdata { i8 81, i8 0 }], [18 x i8] zeroinitializer }, align 32
@mb86a20s_reset_counters._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.21, ptr @.str.2, i32 787, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Can't reset FE statistics (error %d).\0A\00", [53 x i8] zeroinitializer }, align 32
@mb86a20s_reset_counters._entry_ptr = internal global ptr @mb86a20s_reset_counters._entry, section ".printk_index", align 4
@mb86a20s_stats_not_ready.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.3, i8 1, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mb86a20s_stats_not_ready\00", [39 x i8] zeroinitializer }, align 32
@mb86a20s_read_status_and_stats.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.3, i8 1, i8 -27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mb86a20s_read_status_and_stats\00", [33 x i8] zeroinitializer }, align 32
@mb86a20s_read_status_and_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.24, ptr @.str.2, i32 1953, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Can't read frontend lock status\0A\00", [59 x i8] zeroinitializer }, align 32
@mb86a20s_read_status_and_stats._entry_ptr = internal global ptr @mb86a20s_read_status_and_stats._entry, section ".printk_index", align 4
@mb86a20s_read_status_and_stats._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.24, ptr @.str.2, i32 1962, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Can't reset VBER registers.\0A\00", [63 x i8] zeroinitializer }, align 32
@mb86a20s_read_status_and_stats._entry_ptr.28 = internal global ptr @mb86a20s_read_status_and_stats._entry.26, section ".printk_index", align 4
@mb86a20s_read_status_and_stats._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.2, i32 1975, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Can't get FE TMCC data.\0A\00", [35 x i8] zeroinitializer }, align 32
@mb86a20s_read_status_and_stats._entry_ptr.31 = internal global ptr @mb86a20s_read_status_and_stats._entry.29, section ".printk_index", align 4
@mb86a20s_read_status_and_stats._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.2, i32 1984, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Can't get FE statistics.\0A\00", [34 x i8] zeroinitializer }, align 32
@mb86a20s_read_status_and_stats._entry_ptr.34 = internal global ptr @mb86a20s_read_status_and_stats._entry.32, section ".printk_index", align 4
@mb86a20s_read_status.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mb86a20s_read_status\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Status = 0x%02x (state = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.3, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mb86a20s_reset_frontend_cache\00", [34 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mb86a20s_read_signal_strength.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mb86a20s_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: signal strength = %d (%d < RF=%d < %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@mb86a20s_get_frontend.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb86a20s_get_frontend\00", [42 x i8] zeroinitializer }, align 32
@mb86a20s_get_frontend.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: getting data for layer %c.\0A\00", [32 x i8] zeroinitializer }, align 32
@mb86a20s_get_frontend.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: modulation %d.\0A\00", [44 x i8] zeroinitializer }, align 32
@mb86a20s_get_frontend.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 0, i8 -93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: FEC %d.\0A\00", [19 x i8] zeroinitializer }, align 32
@mb86a20s_get_frontend.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.44, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: interleaving %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@mb86a20s_get_frontend.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.45, i8 0, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: layer %c bitrate: %d kbps; counter = %d (0x%06x)\0A\00", [42 x i8] zeroinitializer }, align 32
@mb86a20s_get_segment_count.reg = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\89\8D\91", [29 x i8] zeroinitializer }, align 32
@mb86a20s_get_segment_count.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.3, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mb86a20s_get_segment_count\00", [37 x i8] zeroinitializer }, align 32
@mb86a20s_get_segment_count.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: segments: %d.\0A\00", [45 x i8] zeroinitializer }, align 32
@mb86a20s_get_modulation.reg = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\86\8A\8E", [29 x i8] zeroinitializer }, align 32
@mb86a20s_get_fec.reg = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\87\8B\8F", [29 x i8] zeroinitializer }, align 32
@mb86a20s_get_interleaving.interleaving = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@mb86a20s_get_interleaving.reg = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\88\8C\90", [29 x i8] zeroinitializer }, align 32
@isdbt_rate = internal constant { [3 x [5 x [4 x i32]]], [48 x i8] } { [3 x [5 x [4 x i32]]] [[5 x [4 x i32]] [[4 x i32] [i32 280850, i32 312060, i32 330420, i32 340430], [4 x i32] [i32 374470, i32 416080, i32 440560, i32 453910], [4 x i32] [i32 421280, i32 468090, i32 495630, i32 510650], [4 x i32] [i32 468090, i32 520100, i32 550700, i32 567390], [4 x i32] [i32 491500, i32 546110, i32 578230, i32 595760]], [5 x [4 x i32]] [[4 x i32] [i32 561710, i32 624130, i32 660840, i32 680870], [4 x i32] [i32 748950, i32 832170, i32 881120, i32 907820], [4 x i32] [i32 842570, i32 936190, i32 991260, i32 1021300], [4 x i32] [i32 936190, i32 1040210, i32 1101400, i32 1134780], [4 x i32] [i32 983000, i32 1092220, i32 1156470, i32 1191520]], [5 x [4 x i32]] [[4 x i32] [i32 842570, i32 936190, i32 991260, i32 1021300], [4 x i32] [i32 1123430, i32 1248260, i32 1321680, i32 1361740], [4 x i32] [i32 1263860, i32 1404290, i32 1486900, i32 1531950], [4 x i32] [i32 1404290, i32 1560320, i32 1652110, i32 1702170], [4 x i32] [i32 1474500, i32 1638340, i32 1734710, i32 1787280]]], [48 x i8] zeroinitializer }, align 32
@mb86a20s_get_stats.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.3, i8 1, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mb86a20s_get_stats\00", [45 x i8] zeroinitializer }, align 32
@mb86a20s_get_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.48, ptr @.str.2, i32 1612, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Can't get BER for layer %c (error %d).\0A\00", [52 x i8] zeroinitializer }, align 32
@mb86a20s_get_stats._entry_ptr = internal global ptr @mb86a20s_get_stats._entry, section ".printk_index", align 4
@mb86a20s_get_stats._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.48, ptr @.str.2, i32 1634, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mb86a20s_get_stats._entry_ptr.51 = internal global ptr @mb86a20s_get_stats._entry.50, section ".printk_index", align 4
@mb86a20s_get_stats._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 1657, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Can't get PER for layer %c (error %d).\0A\00", [52 x i8] zeroinitializer }, align 32
@mb86a20s_get_stats._entry_ptr.54 = internal global ptr @mb86a20s_get_stats._entry.52, section ".printk_index", align 4
@mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 1, i8 91, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb86a20s_get_main_CNR\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: CNR is not available yet.\0A\00", [33 x i8] zeroinitializer }, align 32
@cnr_to_db_table = internal constant { [31 x %struct.linear_segments], [40 x i8] } { [31 x %struct.linear_segments] [%struct.linear_segments { i32 19648, i32 0 }, %struct.linear_segments { i32 18187, i32 1000 }, %struct.linear_segments { i32 16534, i32 2000 }, %struct.linear_segments { i32 14823, i32 3000 }, %struct.linear_segments { i32 13161, i32 4000 }, %struct.linear_segments { i32 11622, i32 5000 }, %struct.linear_segments { i32 10279, i32 6000 }, %struct.linear_segments { i32 9089, i32 7000 }, %struct.linear_segments { i32 8042, i32 8000 }, %struct.linear_segments { i32 7137, i32 9000 }, %struct.linear_segments { i32 6342, i32 10000 }, %struct.linear_segments { i32 5641, i32 11000 }, %struct.linear_segments { i32 5030, i32 12000 }, %struct.linear_segments { i32 4474, i32 13000 }, %struct.linear_segments { i32 3988, i32 14000 }, %struct.linear_segments { i32 3556, i32 15000 }, %struct.linear_segments { i32 3180, i32 16000 }, %struct.linear_segments { i32 2841, i32 17000 }, %struct.linear_segments { i32 2541, i32 18000 }, %struct.linear_segments { i32 2276, i32 19000 }, %struct.linear_segments { i32 2038, i32 20000 }, %struct.linear_segments { i32 1800, i32 21000 }, %struct.linear_segments { i32 1625, i32 22000 }, %struct.linear_segments { i32 1462, i32 23000 }, %struct.linear_segments { i32 1324, i32 24000 }, %struct.linear_segments { i32 1175, i32 25000 }, %struct.linear_segments { i32 1063, i32 26000 }, %struct.linear_segments { i32 980, i32 27000 }, %struct.linear_segments { i32 907, i32 28000 }, %struct.linear_segments { i32 840, i32 29000 }, %struct.linear_segments { i32 788, i32 30000 }], [40 x i8] zeroinitializer }, align 32
@mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 1, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: CNR is %d.%03d dB (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.3, i8 1, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mb86a20s_get_blk_error_layer_CNR\00", [63 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 1, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: MER measures aren't available yet.\0A\00", [56 x i8] zeroinitializer }, align 32
@cnr_qpsk_table = internal constant { [31 x %struct.linear_segments], [40 x i8] } { [31 x %struct.linear_segments] [%struct.linear_segments { i32 2834176, i32 0 }, %struct.linear_segments { i32 2683648, i32 1000 }, %struct.linear_segments { i32 2536960, i32 2000 }, %struct.linear_segments { i32 2391808, i32 3000 }, %struct.linear_segments { i32 2133248, i32 4000 }, %struct.linear_segments { i32 1906176, i32 5000 }, %struct.linear_segments { i32 1666560, i32 6000 }, %struct.linear_segments { i32 1422080, i32 7000 }, %struct.linear_segments { i32 1189632, i32 8000 }, %struct.linear_segments { i32 976384, i32 9000 }, %struct.linear_segments { i32 790272, i32 10000 }, %struct.linear_segments { i32 633344, i32 11000 }, %struct.linear_segments { i32 505600, i32 12000 }, %struct.linear_segments { i32 402944, i32 13000 }, %struct.linear_segments { i32 320768, i32 14000 }, %struct.linear_segments { i32 255488, i32 15000 }, %struct.linear_segments { i32 204032, i32 16000 }, %struct.linear_segments { i32 163072, i32 17000 }, %struct.linear_segments { i32 130304, i32 18000 }, %struct.linear_segments { i32 105216, i32 19000 }, %struct.linear_segments { i32 83456, i32 20000 }, %struct.linear_segments { i32 65024, i32 21000 }, %struct.linear_segments { i32 52480, i32 22000 }, %struct.linear_segments { i32 42752, i32 23000 }, %struct.linear_segments { i32 34560, i32 24000 }, %struct.linear_segments { i32 27136, i32 25000 }, %struct.linear_segments { i32 22016, i32 26000 }, %struct.linear_segments { i32 18432, i32 27000 }, %struct.linear_segments { i32 15616, i32 28000 }, %struct.linear_segments { i32 13312, i32 29000 }, %struct.linear_segments { i32 11520, i32 30000 }], [40 x i8] zeroinitializer }, align 32
@cnr_16qam_table = internal constant { [31 x %struct.linear_segments], [40 x i8] } { [31 x %struct.linear_segments] [%struct.linear_segments { i32 5314816, i32 0 }, %struct.linear_segments { i32 5219072, i32 1000 }, %struct.linear_segments { i32 5118720, i32 2000 }, %struct.linear_segments { i32 4998912, i32 3000 }, %struct.linear_segments { i32 4875520, i32 4000 }, %struct.linear_segments { i32 4736000, i32 5000 }, %struct.linear_segments { i32 4604160, i32 6000 }, %struct.linear_segments { i32 4458752, i32 7000 }, %struct.linear_segments { i32 4300288, i32 8000 }, %struct.linear_segments { i32 4092928, i32 9000 }, %struct.linear_segments { i32 3836160, i32 10000 }, %struct.linear_segments { i32 3521024, i32 11000 }, %struct.linear_segments { i32 3155968, i32 12000 }, %struct.linear_segments { i32 2756864, i32 13000 }, %struct.linear_segments { i32 2347008, i32 14000 }, %struct.linear_segments { i32 1955072, i32 15000 }, %struct.linear_segments { i32 1593600, i32 16000 }, %struct.linear_segments { i32 1297920, i32 17000 }, %struct.linear_segments { i32 1043968, i32 18000 }, %struct.linear_segments { i32 839680, i32 19000 }, %struct.linear_segments { i32 672256, i32 20000 }, %struct.linear_segments { i32 523008, i32 21000 }, %struct.linear_segments { i32 424704, i32 22000 }, %struct.linear_segments { i32 345088, i32 23000 }, %struct.linear_segments { i32 280064, i32 24000 }, %struct.linear_segments { i32 221440, i32 25000 }, %struct.linear_segments { i32 179712, i32 26000 }, %struct.linear_segments { i32 151040, i32 27000 }, %struct.linear_segments { i32 128512, i32 28000 }, %struct.linear_segments { i32 110080, i32 29000 }, %struct.linear_segments { i32 95744, i32 30000 }], [40 x i8] zeroinitializer }, align 32
@cnr_64qam_table = internal constant { [31 x %struct.linear_segments], [40 x i8] } { [31 x %struct.linear_segments] [%struct.linear_segments { i32 3922688, i32 0 }, %struct.linear_segments { i32 3920384, i32 1000 }, %struct.linear_segments { i32 3902720, i32 2000 }, %struct.linear_segments { i32 3894784, i32 3000 }, %struct.linear_segments { i32 3882496, i32 4000 }, %struct.linear_segments { i32 3872768, i32 5000 }, %struct.linear_segments { i32 3858944, i32 6000 }, %struct.linear_segments { i32 3851520, i32 7000 }, %struct.linear_segments { i32 3838976, i32 8000 }, %struct.linear_segments { i32 3829248, i32 9000 }, %struct.linear_segments { i32 3818240, i32 10000 }, %struct.linear_segments { i32 3806976, i32 11000 }, %struct.linear_segments { i32 3791872, i32 12000 }, %struct.linear_segments { i32 3767040, i32 13000 }, %struct.linear_segments { i32 3720960, i32 14000 }, %struct.linear_segments { i32 3637504, i32 15000 }, %struct.linear_segments { i32 3498496, i32 16000 }, %struct.linear_segments { i32 3296000, i32 17000 }, %struct.linear_segments { i32 3031040, i32 18000 }, %struct.linear_segments { i32 2715392, i32 19000 }, %struct.linear_segments { i32 2362624, i32 20000 }, %struct.linear_segments { i32 1963264, i32 21000 }, %struct.linear_segments { i32 1649664, i32 22000 }, %struct.linear_segments { i32 1366784, i32 23000 }, %struct.linear_segments { i32 1120768, i32 24000 }, %struct.linear_segments { i32 890880, i32 25000 }, %struct.linear_segments { i32 723456, i32 26000 }, %struct.linear_segments { i32 612096, i32 27000 }, %struct.linear_segments { i32 518912, i32 28000 }, %struct.linear_segments { i32 448256, i32 29000 }, %struct.linear_segments { i32 388864, i32 30000 }], [40 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 1, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: CNR for layer %c is %d.%03d dB (MER = %d).\0A\00", [48 x i8] zeroinitializer }, align 32
@mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.3, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mb86a20s_get_pre_ber\00", [43 x i8] zeroinitializer }, align 32
@mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: preBER for layer %c is not available yet.\0A\00", [49 x i8] zeroinitializer }, align 32
@mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.63, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: bit error before Viterbi for layer %c: %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.64, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: bit count before Viterbi for layer %c: %d.\0A\00", [48 x i8] zeroinitializer }, align 32
@mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.65, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: updating layer %c preBER counter to %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@mb86a20s_get_post_ber.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.3, i8 0, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mb86a20s_get_post_ber\00", [42 x i8] zeroinitializer }, align 32
@mb86a20s_get_post_ber.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: post BER for layer %c is not available yet.\0A\00", [47 x i8] zeroinitializer }, align 32
@mb86a20s_get_post_ber.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.68, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: post bit error for layer %c: %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@mb86a20s_get_post_ber.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.69, i8 0, i8 -9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: post bit count for layer %c: %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@mb86a20s_get_post_ber.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.2, ptr @.str.70, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: updating postBER counter on layer %c to %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.3, i8 1, i8 9, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mb86a20s_get_blk_error\00", [41 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 1, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: block counts for layer %c aren't available yet.\0A\00", [43 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.73, i8 1, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: block error for layer %c: %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.74, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: block count for layer %c: %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@mb86a20s_get_blk_error.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.2, ptr @.str.75, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: updating PER counter on layer %c to %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@switch.table.mb86a20s_get_frontend = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12, i32 0, i32 1, i32 3], [16 x i8] zeroinitializer }, align 32
@switch.table.mb86a20s_get_frontend.76 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.mb86a20s_get_frontend.77 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 0, i32 3, i32 0, i32 4], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 12]
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2055, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [13 x i8] c"mb86a20s_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2086, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2075, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2081, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 259, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2037, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1752, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1809, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1827, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"mb86a20s_init2\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 65, i32 23 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1851, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1855, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 223, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2022, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1865, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"mb86a20s_subchannel\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 24, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 734, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"mb86a20s_per_ber_reset\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 196, i32 23 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 785, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1530, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1940, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1952, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1961, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1974, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1983, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 312, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 502, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 365, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 611, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 628, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 645, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 651, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 657, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 670, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 473, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 479, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 492, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 380, i32 23 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 413, i32 23 }
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"interleaving\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 447, i32 19 }
@___asan_gen_.258 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 451, i32 29 }
@___asan_gen_.261 = private unnamed_addr constant [11 x i8] c"isdbt_rate\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 520, i32 18 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1575, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1610, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1632, i32 5 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1655, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1388, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [16 x i8] c"cnr_to_db_table\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1208, i32 37 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1410, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1431, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1443, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [15 x i8] c"cnr_qpsk_table\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1310, i32 37 }
@___asan_gen_.303 = private unnamed_addr constant [16 x i8] c"cnr_16qam_table\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1276, i32 37 }
@___asan_gen_.306 = private unnamed_addr constant [16 x i8] c"cnr_64qam_table\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1242, i32 37 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1498, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 799, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 811, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 831, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 858, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 872, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 933, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 945, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 965, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 986, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1006, i32 3 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1060, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1076, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1097, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1116, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [42 x i8] c"../drivers/media/dvb-frontends/mb86a20s.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1137, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant [35 x i8] c"switch.table.mb86a20s_get_frontend\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [38 x i8] c"switch.table.mb86a20s_get_frontend.76\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [38 x i8] c"switch.table.mb86a20s_get_frontend.77\00", align 1
@llvm.compiler.used = appending global [112 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description334, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__ksymtab_mb86a20s_attach, ptr @mb86a20s_attach._entry, ptr @mb86a20s_attach._entry_ptr, ptr @mb86a20s_get_stats._entry, ptr @mb86a20s_get_stats._entry.50, ptr @mb86a20s_get_stats._entry.52, ptr @mb86a20s_get_stats._entry_ptr, ptr @mb86a20s_get_stats._entry_ptr.51, ptr @mb86a20s_get_stats._entry_ptr.54, ptr @mb86a20s_i2c_readreg._entry, ptr @mb86a20s_i2c_readreg._entry_ptr, ptr @mb86a20s_i2c_writereg._entry, ptr @mb86a20s_i2c_writereg._entry_ptr, ptr @mb86a20s_initfe._entry, ptr @mb86a20s_initfe._entry_ptr, ptr @mb86a20s_read_status_and_stats._entry, ptr @mb86a20s_read_status_and_stats._entry.26, ptr @mb86a20s_read_status_and_stats._entry.29, ptr @mb86a20s_read_status_and_stats._entry.32, ptr @mb86a20s_read_status_and_stats._entry_ptr, ptr @mb86a20s_read_status_and_stats._entry_ptr.28, ptr @mb86a20s_read_status_and_stats._entry_ptr.31, ptr @mb86a20s_read_status_and_stats._entry_ptr.34, ptr @mb86a20s_reset_counters._entry, ptr @mb86a20s_reset_counters._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mb86a20s_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mb86a20s_init2, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @mb86a20s_subchannel, ptr @.str.21, ptr @mb86a20s_per_ber_reset, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @mb86a20s_get_segment_count.reg, ptr @.str.46, ptr @.str.47, ptr @mb86a20s_get_modulation.reg, ptr @mb86a20s_get_fec.reg, ptr @mb86a20s_get_interleaving.interleaving, ptr @mb86a20s_get_interleaving.reg, ptr @isdbt_rate, ptr @.str.48, ptr @.str.49, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @cnr_to_db_table, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @cnr_qpsk_table, ptr @cnr_16qam_table, ptr @cnr_64qam_table, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.mb86a20s_get_frontend, ptr @switch.table.mb86a20s_get_frontend.76, ptr @switch.table.mb86a20s_get_frontend.77], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_i2c_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_init2 to i32), i32 462, i32 576, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_initfe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_i2c_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_subchannel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_per_ber_reset to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_reset_counters._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_read_status_and_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_read_status_and_stats._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_read_status_and_stats._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_read_status_and_stats._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_segment_count.reg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_modulation.reg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_fec.reg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_interleaving.interleaving to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_interleaving.reg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isdbt_rate to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_stats._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb86a20s_get_stats._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnr_to_db_table to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnr_qpsk_table to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnr_16qam_table to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnr_64qam_table to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mb86a20s_get_frontend to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mb86a20s_get_frontend.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mb86a20s_get_frontend.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mb86a20s_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_attach.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_attach, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_attach.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1088) #11
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %config7 = getelementptr inbounds %struct.mb86a20s_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config7, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %ops = getelementptr inbounds %struct.mb86a20s_state, ptr %call7.i.i, i32 0, i32 3, i32 1
  %3 = call ptr @memcpy(ptr %ops, ptr @mb86a20s_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.mb86a20s_state, ptr %call7.i.i, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %demodulator_priv, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %config, i32 0, i32 1
  %5 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %conv.i = zext i8 %6 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf5.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %i2c, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp9.i, i32 %call.i, i32 -5
  br label %mb86a20s_i2c_readreg.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %24 to i32
  br label %mb86a20s_i2c_readreg.exit

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end.i, %do.end.i
  %retval.0.i56 = phi i32 [ %spec.select.i, %do.end.i ], [ %conv11.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %conv12 = and i32 %retval.0.i56, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %conv12)
  %cmp.not = icmp eq i32 %conv12, 19
  br i1 %cmp.not, label %do.end36, label %if.then14

if.then14:                                        ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_attach.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_attach, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !240

if.then27:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_attach.__UNIQUE_ID_ddebug333, ptr noundef %dev28, ptr noundef nonnull @.str.4, i32 noundef %conv12) #8
  br label %cleanup

do.end36:                                         ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %frontend = getelementptr inbounds %struct.mb86a20s_state, ptr %call7.i.i, i32 0, i32 3
  %dev37 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef nonnull @.str.5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.then27, %if.then14, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %frontend, %do.end36 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.then27 ], [ null, %if.then14 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_i2c_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %i2c_addr, i8 noundef zeroext %reg) unnamed_addr #0 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %val = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %conv = zext i8 %i2c_addr to i16
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reg.addr, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %8 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %arrayinit.element, align 4
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %10 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %11 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %val, ptr %buf5, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %reg.addr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg.addr, align 1
  %conv8 = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp9 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp9, i32 %call, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %val, align 1
  %conv11 = zext i8 %19 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %conv11, %if.end ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mb86a20s_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_release.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_release, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_release.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb86a20s_initfe(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i1004 = alloca [2 x i8], align 1
  %msg.i1005 = alloca %struct.i2c_msg, align 4
  %buf.i991 = alloca [2 x i8], align 1
  %msg.i992 = alloca %struct.i2c_msg, align 4
  %buf.i978 = alloca [2 x i8], align 1
  %msg.i979 = alloca %struct.i2c_msg, align 4
  %buf.i966 = alloca [2 x i8], align 1
  %msg.i967 = alloca %struct.i2c_msg, align 4
  %buf.i951 = alloca [2 x i8], align 1
  %msg.i952 = alloca %struct.i2c_msg, align 4
  %buf.i938 = alloca [2 x i8], align 1
  %msg.i939 = alloca %struct.i2c_msg, align 4
  %buf.i925 = alloca [2 x i8], align 1
  %msg.i926 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_initfe, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_initfe.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %demod_address, align 4
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %conv.i.i = zext i8 %9 to i16
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 112, ptr %buf.i.i, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 196607, ptr %11, align 4
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %17 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %mb86a20s_i2c_writereg.exit.thread.i, label %mb86a20s_i2c_writereg.exit.i

mb86a20s_i2c_writereg.exit.thread.i:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i

mb86a20s_i2c_writereg.exit.i:                     ; preds = %if.end8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i, i32 noundef 112, i32 noundef 15) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %mb86a20s_i2c_writereg.exit.i.err_crit_edge, label %mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge

mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

mb86a20s_i2c_writereg.exit.i.err_crit_edge:       ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

for.inc.i:                                        ; preds = %mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge, %mb86a20s_i2c_writereg.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %22 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 112, ptr %buf.i.i, align 1
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -1, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %24 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 196607, ptr %11, align 4
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %26 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i.i, align 2
  %27 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i.i.1 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.1)
  %cmp.not.i.i.1 = icmp eq i32 %call.i.i.1, 1
  br i1 %cmp.not.i.i.1, label %mb86a20s_i2c_writereg.exit.thread.i.1, label %mb86a20s_i2c_writereg.exit.i.1

mb86a20s_i2c_writereg.exit.i.1:                   ; preds = %for.inc.i
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %dev.i.i.1 = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.1, i32 noundef 112, i32 noundef 255) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp2.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp2.i.1, label %mb86a20s_i2c_writereg.exit.i.1.err_crit_edge, label %mb86a20s_i2c_writereg.exit.i.1.for.inc.i.1_crit_edge

mb86a20s_i2c_writereg.exit.i.1.for.inc.i.1_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

mb86a20s_i2c_writereg.exit.i.1.err_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

mb86a20s_i2c_writereg.exit.thread.i.1:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.1, %mb86a20s_i2c_writereg.exit.i.1.for.inc.i.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %32 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 8, ptr %buf.i.i, align 1
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 196607, ptr %11, align 4
  %35 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i.i, align 2
  %37 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i.i.2 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.2)
  %cmp.not.i.i.2 = icmp eq i32 %call.i.i.2, 1
  br i1 %cmp.not.i.i.2, label %mb86a20s_i2c_writereg.exit.thread.i.2, label %mb86a20s_i2c_writereg.exit.i.2

mb86a20s_i2c_writereg.exit.i.2:                   ; preds = %for.inc.i.1
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %dev.i.i.2 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.2, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.2, i32 noundef 8, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp2.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp2.i.2, label %mb86a20s_i2c_writereg.exit.i.2.err_crit_edge, label %mb86a20s_i2c_writereg.exit.i.2.for.inc.i.2_crit_edge

mb86a20s_i2c_writereg.exit.i.2.for.inc.i.2_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

mb86a20s_i2c_writereg.exit.i.2.err_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

mb86a20s_i2c_writereg.exit.thread.i.2:            ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.2, %mb86a20s_i2c_writereg.exit.i.2.for.inc.i.2_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 80, ptr %buf.i.i, align 1
  %43 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -47, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %44 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %11, align 4
  %45 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i, align 2
  %47 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i.3 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.3)
  %cmp.not.i.i.3 = icmp eq i32 %call.i.i.3, 1
  br i1 %cmp.not.i.i.3, label %mb86a20s_i2c_writereg.exit.thread.i.3, label %mb86a20s_i2c_writereg.exit.i.3

mb86a20s_i2c_writereg.exit.i.3:                   ; preds = %for.inc.i.2
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i.i.3 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.3, i32 noundef 80, i32 noundef 209) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp2.i.3 = icmp slt i32 %call.i.i.3, 0
  br i1 %cmp2.i.3, label %mb86a20s_i2c_writereg.exit.i.3.err_crit_edge, label %mb86a20s_i2c_writereg.exit.i.3.for.inc.i.3_crit_edge

mb86a20s_i2c_writereg.exit.i.3.for.inc.i.3_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

mb86a20s_i2c_writereg.exit.i.3.err_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

mb86a20s_i2c_writereg.exit.thread.i.3:            ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.3, %mb86a20s_i2c_writereg.exit.i.3.for.inc.i.3_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %52 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 81, ptr %buf.i.i, align 1
  %53 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 32, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %54 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %11, align 4
  %55 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i.i, align 2
  %57 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i.i.4 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.4)
  %cmp.not.i.i.4 = icmp eq i32 %call.i.i.4, 1
  br i1 %cmp.not.i.i.4, label %mb86a20s_i2c_writereg.exit.thread.i.4, label %mb86a20s_i2c_writereg.exit.i.4

mb86a20s_i2c_writereg.exit.i.4:                   ; preds = %for.inc.i.3
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev.i.i.4 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.4, i32 noundef 81, i32 noundef 32) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %cmp2.i.4 = icmp slt i32 %call.i.i.4, 0
  br i1 %cmp2.i.4, label %mb86a20s_i2c_writereg.exit.i.4.err_crit_edge, label %mb86a20s_i2c_writereg.exit.i.4.for.inc.i.4_crit_edge

mb86a20s_i2c_writereg.exit.i.4.for.inc.i.4_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.4

mb86a20s_i2c_writereg.exit.i.4.err_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

mb86a20s_i2c_writereg.exit.thread.i.4:            ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.4, %mb86a20s_i2c_writereg.exit.i.4.for.inc.i.4_crit_edge
  %inversion = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %inversion to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %inversion, align 4, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool12.not = icmp eq i8 %63, 0
  %spec.select = select i1 %tobool12.not, i8 62, i8 58
  %64 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config, align 4
  %demod_address17 = getelementptr inbounds %struct.mb86a20s_config, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %demod_address17 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %demod_address17, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %68 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %69 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 9, ptr %buf.i, align 1
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %spec.select, ptr %68, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %71 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 196607, ptr %71, align 4
  %conv.i = zext i8 %67 to i16
  %73 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %75 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %buf.i, ptr %buf1.i, align 4
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end22

mb86a20s_i2c_writereg.exit:                       ; preds = %for.inc.i.4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %79, i32 0, i32 9
  %conv5.i = zext i8 %spec.select to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef 9, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp19 = icmp slt i32 %call.i, 0
  br i1 %cmp19, label %mb86a20s_i2c_writereg.exit.err_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end22_crit_edge

mb86a20s_i2c_writereg.exit.if.end22_crit_edge:    ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

mb86a20s_i2c_writereg.exit.err_crit_edge:         ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end22:                                         ; preds = %mb86a20s_i2c_writereg.exit.if.end22_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %bw = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 5
  %80 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool23.not = icmp eq i32 %81, 0
  %. = zext i1 %tobool23.not to i8
  %82 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config, align 4
  %demod_address27 = getelementptr inbounds %struct.mb86a20s_config, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %demod_address27 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %demod_address27, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i925) #8
  %86 = getelementptr inbounds [2 x i8], ptr %buf.i925, i32 0, i32 1
  %87 = ptrtoint ptr %buf.i925 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 57, ptr %buf.i925, align 1
  %88 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %., ptr %86, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i926) #8
  %89 = getelementptr inbounds i8, ptr %msg.i926, i32 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 196607, ptr %89, align 4
  %conv.i927 = zext i8 %85 to i16
  %91 = ptrtoint ptr %msg.i926 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i927, ptr %msg.i926, align 4
  %flags.i928 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i926, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i928 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i928, align 2
  %buf1.i930 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i926, i32 0, i32 3
  %93 = ptrtoint ptr %buf1.i930 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf.i925, ptr %buf1.i930, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %call.i931 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i926, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i931)
  %cmp.not.i932 = icmp eq i32 %call.i931, 1
  br i1 %cmp.not.i932, label %mb86a20s_i2c_writereg.exit937.thread, label %mb86a20s_i2c_writereg.exit937

mb86a20s_i2c_writereg.exit937.thread:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i926) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i925) #8
  br label %if.end32

mb86a20s_i2c_writereg.exit937:                    ; preds = %if.end22
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  %dev.i933 = getelementptr inbounds %struct.i2c_adapter, ptr %97, i32 0, i32 9
  %conv5.i934 = zext i1 %tobool23.not to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i933, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i931, i32 noundef 57, i32 noundef %conv5.i934) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i926) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i925) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i931)
  %cmp29 = icmp slt i32 %call.i931, 0
  br i1 %cmp29, label %mb86a20s_i2c_writereg.exit937.err_crit_edge, label %mb86a20s_i2c_writereg.exit937.if.end32_crit_edge

mb86a20s_i2c_writereg.exit937.if.end32_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit937
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

mb86a20s_i2c_writereg.exit937.err_crit_edge:      ; preds = %mb86a20s_i2c_writereg.exit937
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end32:                                         ; preds = %mb86a20s_i2c_writereg.exit937.if.end32_crit_edge, %mb86a20s_i2c_writereg.exit937.thread
  %98 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config, align 4
  %demod_address34 = getelementptr inbounds %struct.mb86a20s_config, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %demod_address34 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %demod_address34, align 4
  %102 = ptrtoint ptr %bw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bw, align 4
  %conv36 = trunc i32 %103 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i938) #8
  %104 = getelementptr inbounds [2 x i8], ptr %buf.i938, i32 0, i32 1
  %105 = ptrtoint ptr %buf.i938 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 113, ptr %buf.i938, align 1
  %106 = ptrtoint ptr %104 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv36, ptr %104, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i939) #8
  %107 = getelementptr inbounds i8, ptr %msg.i939, i32 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 196607, ptr %107, align 4
  %conv.i940 = zext i8 %101 to i16
  %109 = ptrtoint ptr %msg.i939 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i940, ptr %msg.i939, align 4
  %flags.i941 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i939, i32 0, i32 1
  %110 = ptrtoint ptr %flags.i941 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i941, align 2
  %buf1.i943 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i939, i32 0, i32 3
  %111 = ptrtoint ptr %buf1.i943 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i938, ptr %buf1.i943, align 4
  %112 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %1, align 4
  %call.i944 = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i939, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i944)
  %cmp.not.i945 = icmp eq i32 %call.i944, 1
  br i1 %cmp.not.i945, label %mb86a20s_i2c_writereg.exit950.thread, label %mb86a20s_i2c_writereg.exit950

mb86a20s_i2c_writereg.exit950.thread:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i939) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i938) #8
  br label %if.end41

mb86a20s_i2c_writereg.exit950:                    ; preds = %if.end32
  %114 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %1, align 4
  %dev.i946 = getelementptr inbounds %struct.i2c_adapter, ptr %115, i32 0, i32 9
  %conv5.i947 = and i32 %103, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i946, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i944, i32 noundef 113, i32 noundef %conv5.i947) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i939) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i938) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i944)
  %cmp38 = icmp slt i32 %call.i944, 0
  br i1 %cmp38, label %mb86a20s_i2c_writereg.exit950.err_crit_edge, label %mb86a20s_i2c_writereg.exit950.if.end41_crit_edge

mb86a20s_i2c_writereg.exit950.if.end41_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit950
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

mb86a20s_i2c_writereg.exit950.err_crit_edge:      ; preds = %mb86a20s_i2c_writereg.exit950
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end41:                                         ; preds = %mb86a20s_i2c_writereg.exit950.if.end41_crit_edge, %mb86a20s_i2c_writereg.exit950.thread
  %subchannel = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 7
  %116 = ptrtoint ptr %subchannel to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %subchannel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool42.not = icmp eq i32 %117, 0
  br i1 %tobool42.not, label %if.end41.if.end53_crit_edge, label %if.then43

if.end41.if.end53_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then43:                                        ; preds = %if.end41
  %118 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %config, align 4
  %demod_address45 = getelementptr inbounds %struct.mb86a20s_config, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %demod_address45 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %demod_address45, align 4
  %conv47 = trunc i32 %117 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i951) #8
  %122 = getelementptr inbounds [2 x i8], ptr %buf.i951, i32 0, i32 1
  %123 = ptrtoint ptr %buf.i951 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 68, ptr %buf.i951, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv47, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i952) #8
  %125 = getelementptr inbounds i8, ptr %msg.i952, i32 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 196607, ptr %125, align 4
  %conv.i953 = zext i8 %121 to i16
  %127 = ptrtoint ptr %msg.i952 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %conv.i953, ptr %msg.i952, align 4
  %flags.i954 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i952, i32 0, i32 1
  %128 = ptrtoint ptr %flags.i954 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %flags.i954, align 2
  %buf1.i956 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i952, i32 0, i32 3
  %129 = ptrtoint ptr %buf1.i956 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %buf.i951, ptr %buf1.i956, align 4
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %call.i957 = call i32 @i2c_transfer(ptr noundef %131, ptr noundef nonnull %msg.i952, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i957)
  %cmp.not.i958 = icmp eq i32 %call.i957, 1
  br i1 %cmp.not.i958, label %mb86a20s_i2c_writereg.exit963.thread, label %mb86a20s_i2c_writereg.exit963

mb86a20s_i2c_writereg.exit963.thread:             ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i952) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i951) #8
  br label %if.end53

mb86a20s_i2c_writereg.exit963:                    ; preds = %if.then43
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %dev.i959 = getelementptr inbounds %struct.i2c_adapter, ptr %133, i32 0, i32 9
  %conv5.i960 = and i32 %117, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i959, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i957, i32 noundef 68, i32 noundef %conv5.i960) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i952) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i951) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i957)
  %cmp49 = icmp slt i32 %call.i957, 0
  br i1 %cmp49, label %mb86a20s_i2c_writereg.exit963.err_crit_edge, label %mb86a20s_i2c_writereg.exit963.if.end53_crit_edge

mb86a20s_i2c_writereg.exit963.if.end53_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit963
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

mb86a20s_i2c_writereg.exit963.err_crit_edge:      ; preds = %mb86a20s_i2c_writereg.exit963
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end53:                                         ; preds = %mb86a20s_i2c_writereg.exit963.if.end53_crit_edge, %mb86a20s_i2c_writereg.exit963.thread, %if.end41.if.end53_crit_edge
  %134 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %config, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool56.not = icmp eq i32 %137, 0
  %spec.store.select = select i1 %tobool56.not, i32 32571428, i32 %137
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %138 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %get_if_frequency, align 4
  %tobool60.not = icmp eq ptr %139, null
  br i1 %tobool60.not, label %if.end53.if.end66_crit_edge, label %if.then61

if.end53.if.end66_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %if_freq = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 4
  %call65 = call i32 %139(ptr noundef %fe, ptr noundef %if_freq) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end53.if.end66_crit_edge
  %if_freq67 = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 4
  %140 = ptrtoint ptr %if_freq67 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %if_freq67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool68.not = icmp eq i32 %141, 0
  br i1 %tobool68.not, label %if.then69, label %if.end66.if.end71_crit_edge

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %if_freq67 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 3300000, ptr %if_freq67, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66.if.end71_crit_edge
  %143 = ptrtoint ptr %if_freq67 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %if_freq67, align 4
  %conv73 = zext i32 %144 to i64
  %mul = shl i64 %conv73, 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul)
  %cmp249 = icmp eq i64 %mul, 0
  br i1 %cmp249, label %if.end71.if.end267_crit_edge, label %if.else263, !prof !243

if.end71.if.end267_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end267

if.else263:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %mul74 = mul i32 %spec.store.select, 63
  %145 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul74, i64 %mul) #13, !srcloc !244
  %asmresult1.i = extractvalue { i64, i64 } %145, 1
  %phi.bo = sub i64 33554432, %asmresult1.i
  br label %if.end267

if.end267:                                        ; preds = %if.else263, %if.end71.if.end267_crit_edge
  %pll.0 = phi i64 [ %phi.bo, %if.else263 ], [ 33554432, %if.end71.if.end267_crit_edge ]
  %146 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %config, align 4
  %demod_address271 = getelementptr inbounds %struct.mb86a20s_config, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %demod_address271 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %demod_address271, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i966) #8
  %150 = getelementptr inbounds [2 x i8], ptr %buf.i966, i32 0, i32 1
  %151 = ptrtoint ptr %buf.i966 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 40, ptr %buf.i966, align 1
  %152 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 42, ptr %150, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i967) #8
  %153 = getelementptr inbounds i8, ptr %msg.i967, i32 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 196607, ptr %153, align 4
  %conv.i968 = zext i8 %149 to i16
  %155 = ptrtoint ptr %msg.i967 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %conv.i968, ptr %msg.i967, align 4
  %flags.i969 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i967, i32 0, i32 1
  %156 = ptrtoint ptr %flags.i969 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %flags.i969, align 2
  %buf1.i971 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i967, i32 0, i32 3
  %157 = ptrtoint ptr %buf1.i971 to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %buf.i966, ptr %buf1.i971, align 4
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %call.i972 = call i32 @i2c_transfer(ptr noundef %159, ptr noundef nonnull %msg.i967, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i972)
  %cmp.not.i973 = icmp eq i32 %call.i972, 1
  br i1 %cmp.not.i973, label %mb86a20s_i2c_writereg.exit977.thread, label %mb86a20s_i2c_writereg.exit977

mb86a20s_i2c_writereg.exit977.thread:             ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i967) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i966) #8
  br label %if.end276

mb86a20s_i2c_writereg.exit977:                    ; preds = %if.end267
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %dev.i974 = getelementptr inbounds %struct.i2c_adapter, ptr %161, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i974, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i972, i32 noundef 40, i32 noundef 42) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i967) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i966) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i972)
  %cmp273 = icmp slt i32 %call.i972, 0
  br i1 %cmp273, label %mb86a20s_i2c_writereg.exit977.err_crit_edge, label %mb86a20s_i2c_writereg.exit977.if.end276_crit_edge

mb86a20s_i2c_writereg.exit977.if.end276_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit977
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end276

mb86a20s_i2c_writereg.exit977.err_crit_edge:      ; preds = %mb86a20s_i2c_writereg.exit977
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end276:                                        ; preds = %mb86a20s_i2c_writereg.exit977.if.end276_crit_edge, %mb86a20s_i2c_writereg.exit977.thread
  %162 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %config, align 4
  %demod_address278 = getelementptr inbounds %struct.mb86a20s_config, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %demod_address278 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %demod_address278, align 4
  %shr279 = lshr i64 %pll.0, 16
  %conv281 = trunc i64 %shr279 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i978) #8
  %166 = getelementptr inbounds [2 x i8], ptr %buf.i978, i32 0, i32 1
  %167 = ptrtoint ptr %buf.i978 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 41, ptr %buf.i978, align 1
  %168 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %conv281, ptr %166, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i979) #8
  %169 = getelementptr inbounds i8, ptr %msg.i979, i32 4
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 196607, ptr %169, align 4
  %conv.i980 = zext i8 %165 to i16
  %171 = ptrtoint ptr %msg.i979 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv.i980, ptr %msg.i979, align 4
  %flags.i981 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i979, i32 0, i32 1
  %172 = ptrtoint ptr %flags.i981 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %flags.i981, align 2
  %buf1.i983 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i979, i32 0, i32 3
  %173 = ptrtoint ptr %buf1.i983 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %buf.i978, ptr %buf1.i983, align 4
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %call.i984 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %msg.i979, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i984)
  %cmp.not.i985 = icmp eq i32 %call.i984, 1
  br i1 %cmp.not.i985, label %mb86a20s_i2c_writereg.exit990.thread, label %mb86a20s_i2c_writereg.exit990

mb86a20s_i2c_writereg.exit990.thread:             ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i979) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i978) #8
  br label %if.end286

mb86a20s_i2c_writereg.exit990:                    ; preds = %if.end276
  %176 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %1, align 4
  %dev.i986 = getelementptr inbounds %struct.i2c_adapter, ptr %177, i32 0, i32 9
  %178 = trunc i64 %shr279 to i32
  %conv5.i987 = and i32 %178, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i986, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i984, i32 noundef 41, i32 noundef %conv5.i987) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i979) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i978) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i984)
  %cmp283 = icmp slt i32 %call.i984, 0
  br i1 %cmp283, label %mb86a20s_i2c_writereg.exit990.err_crit_edge, label %mb86a20s_i2c_writereg.exit990.if.end286_crit_edge

mb86a20s_i2c_writereg.exit990.if.end286_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit990
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end286

mb86a20s_i2c_writereg.exit990.err_crit_edge:      ; preds = %mb86a20s_i2c_writereg.exit990
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end286:                                        ; preds = %mb86a20s_i2c_writereg.exit990.if.end286_crit_edge, %mb86a20s_i2c_writereg.exit990.thread
  %179 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config, align 4
  %demod_address288 = getelementptr inbounds %struct.mb86a20s_config, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %demod_address288 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %demod_address288, align 4
  %shr289 = lshr i64 %pll.0, 8
  %conv291 = trunc i64 %shr289 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i991) #8
  %183 = getelementptr inbounds [2 x i8], ptr %buf.i991, i32 0, i32 1
  %184 = ptrtoint ptr %buf.i991 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 42, ptr %buf.i991, align 1
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv291, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i992) #8
  %186 = getelementptr inbounds i8, ptr %msg.i992, i32 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 196607, ptr %186, align 4
  %conv.i993 = zext i8 %182 to i16
  %188 = ptrtoint ptr %msg.i992 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv.i993, ptr %msg.i992, align 4
  %flags.i994 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i992, i32 0, i32 1
  %189 = ptrtoint ptr %flags.i994 to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 0, ptr %flags.i994, align 2
  %buf1.i996 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i992, i32 0, i32 3
  %190 = ptrtoint ptr %buf1.i996 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %buf.i991, ptr %buf1.i996, align 4
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %call.i997 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %msg.i992, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i997)
  %cmp.not.i998 = icmp eq i32 %call.i997, 1
  br i1 %cmp.not.i998, label %mb86a20s_i2c_writereg.exit1003.thread, label %mb86a20s_i2c_writereg.exit1003

mb86a20s_i2c_writereg.exit1003.thread:            ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i992) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i991) #8
  br label %if.end296

mb86a20s_i2c_writereg.exit1003:                   ; preds = %if.end286
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %dev.i999 = getelementptr inbounds %struct.i2c_adapter, ptr %194, i32 0, i32 9
  %195 = trunc i64 %shr289 to i32
  %conv5.i1000 = and i32 %195, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i999, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i997, i32 noundef 42, i32 noundef %conv5.i1000) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i992) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i991) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i997)
  %cmp293 = icmp slt i32 %call.i997, 0
  br i1 %cmp293, label %mb86a20s_i2c_writereg.exit1003.err_crit_edge, label %mb86a20s_i2c_writereg.exit1003.if.end296_crit_edge

mb86a20s_i2c_writereg.exit1003.if.end296_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit1003
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end296

mb86a20s_i2c_writereg.exit1003.err_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit1003
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end296:                                        ; preds = %mb86a20s_i2c_writereg.exit1003.if.end296_crit_edge, %mb86a20s_i2c_writereg.exit1003.thread
  %196 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %config, align 4
  %demod_address298 = getelementptr inbounds %struct.mb86a20s_config, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %demod_address298 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %demod_address298, align 4
  %conv300 = trunc i64 %pll.0 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1004) #8
  %200 = getelementptr inbounds [2 x i8], ptr %buf.i1004, i32 0, i32 1
  %201 = ptrtoint ptr %buf.i1004 to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 43, ptr %buf.i1004, align 1
  %202 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 %conv300, ptr %200, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1005) #8
  %203 = getelementptr inbounds i8, ptr %msg.i1005, i32 4
  %204 = ptrtoint ptr %203 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 196607, ptr %203, align 4
  %conv.i1006 = zext i8 %199 to i16
  %205 = ptrtoint ptr %msg.i1005 to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv.i1006, ptr %msg.i1005, align 4
  %flags.i1007 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1005, i32 0, i32 1
  %206 = ptrtoint ptr %flags.i1007 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 0, ptr %flags.i1007, align 2
  %buf1.i1009 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1005, i32 0, i32 3
  %207 = ptrtoint ptr %buf1.i1009 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %buf.i1004, ptr %buf1.i1009, align 4
  %208 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %1, align 4
  %call.i1010 = call i32 @i2c_transfer(ptr noundef %209, ptr noundef nonnull %msg.i1005, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1010)
  %cmp.not.i1011 = icmp eq i32 %call.i1010, 1
  br i1 %cmp.not.i1011, label %mb86a20s_i2c_writereg.exit1016.thread, label %mb86a20s_i2c_writereg.exit1016

mb86a20s_i2c_writereg.exit1016.thread:            ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1005) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1004) #8
  br label %do.body306

mb86a20s_i2c_writereg.exit1016:                   ; preds = %if.end296
  %210 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %1, align 4
  %dev.i1012 = getelementptr inbounds %struct.i2c_adapter, ptr %211, i32 0, i32 9
  %212 = trunc i64 %pll.0 to i32
  %conv5.i1013 = and i32 %212, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i1012, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i1010, i32 noundef 43, i32 noundef %conv5.i1013) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1005) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1004) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1010)
  %cmp302 = icmp slt i32 %call.i1010, 0
  br i1 %cmp302, label %mb86a20s_i2c_writereg.exit1016.err_crit_edge, label %mb86a20s_i2c_writereg.exit1016.do.body306_crit_edge

mb86a20s_i2c_writereg.exit1016.do.body306_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit1016
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body306

mb86a20s_i2c_writereg.exit1016.err_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit1016
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.body306:                                       ; preds = %mb86a20s_i2c_writereg.exit1016.do.body306_crit_edge, %mb86a20s_i2c_writereg.exit1016.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_initfe, %if.then318)) #8
          to label %if.end547 [label %if.then318], !srcloc !240

if.then318:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %dev320 = getelementptr inbounds %struct.i2c_adapter, ptr %214, i32 0, i32 9
  %215 = ptrtoint ptr %if_freq67 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %if_freq67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_initfe.__UNIQUE_ID_ddebug325, ptr noundef %dev320, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef %spec.store.select, i32 noundef %216, i64 noundef %pll.0) #8
  br label %if.end547

if.end547:                                        ; preds = %if.then318, %do.body306
  %217 = ptrtoint ptr %if_freq67 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %if_freq67, align 4
  %mul326 = mul i32 %218, 1677721600
  %conv327 = zext i32 %mul326 to i64
  %219 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -6284526147088855387, i64 %conv327) #13, !srcloc !245
  %220 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6284526147088855387, i64 %conv327, i64 %219, i32 0) #13, !srcloc !246
  %asmresult10.i = extractvalue { i64, i32 } %220, 0
  %storemerge = lshr i64 %asmresult10.i, 30
  %221 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %config, align 4
  %demod_address550 = getelementptr inbounds %struct.mb86a20s_config, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %demod_address550 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %demod_address550, align 4
  %call551 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %224, i8 noundef zeroext 40, i8 noundef zeroext 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call551)
  %cmp552 = icmp slt i32 %call551, 0
  br i1 %cmp552, label %if.end547.err_crit_edge, label %if.end555

if.end547.err_crit_edge:                          ; preds = %if.end547
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end555:                                        ; preds = %if.end547
  %225 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %config, align 4
  %demod_address557 = getelementptr inbounds %struct.mb86a20s_config, ptr %226, i32 0, i32 1
  %227 = ptrtoint ptr %demod_address557 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %demod_address557, align 4
  %shr558 = lshr i64 %asmresult10.i, 46
  %conv560 = trunc i64 %shr558 to i8
  %call561 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %228, i8 noundef zeroext 41, i8 noundef zeroext %conv560)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call561)
  %cmp562 = icmp slt i32 %call561, 0
  br i1 %cmp562, label %if.end555.err_crit_edge, label %if.end565

if.end555.err_crit_edge:                          ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end565:                                        ; preds = %if.end555
  %229 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %config, align 4
  %demod_address567 = getelementptr inbounds %struct.mb86a20s_config, ptr %230, i32 0, i32 1
  %231 = ptrtoint ptr %demod_address567 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %demod_address567, align 4
  %shr568 = lshr i64 %asmresult10.i, 38
  %conv570 = trunc i64 %shr568 to i8
  %call571 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %232, i8 noundef zeroext 42, i8 noundef zeroext %conv570)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call571)
  %cmp572 = icmp slt i32 %call571, 0
  br i1 %cmp572, label %if.end565.err_crit_edge, label %if.end575

if.end565.err_crit_edge:                          ; preds = %if.end565
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end575:                                        ; preds = %if.end565
  %233 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %config, align 4
  %demod_address577 = getelementptr inbounds %struct.mb86a20s_config, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %demod_address577 to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %demod_address577, align 4
  %conv579 = trunc i64 %storemerge to i8
  %call580 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %236, i8 noundef zeroext 43, i8 noundef zeroext %conv579)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call580)
  %cmp581 = icmp slt i32 %call580, 0
  br i1 %cmp581, label %if.end575.err_crit_edge, label %do.body585

if.end575.err_crit_edge:                          ; preds = %if.end575
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.body585:                                       ; preds = %if.end575
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_initfe, %if.then597)) #8
          to label %do.end603 [label %if.then597], !srcloc !240

if.then597:                                       ; preds = %do.body585
  call void @__sanitizer_cov_trace_pc() #10
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %dev599 = getelementptr inbounds %struct.i2c_adapter, ptr %238, i32 0, i32 9
  %239 = ptrtoint ptr %if_freq67 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %if_freq67, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_initfe.__UNIQUE_ID_ddebug326, ptr noundef %dev599, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12, i32 noundef %240, i64 noundef %storemerge) #8
  br label %do.end603

do.end603:                                        ; preds = %if.then597, %do.body585
  %241 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %config, align 4
  %is_serial = getelementptr inbounds %struct.mb86a20s_config, ptr %242, i32 0, i32 2
  %243 = ptrtoint ptr %is_serial to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %is_serial, align 1, !range !242
  %demod_address612 = getelementptr inbounds %struct.mb86a20s_config, ptr %242, i32 0, i32 1
  %245 = ptrtoint ptr %demod_address612 to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %demod_address612, align 4
  %call613 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %246, i8 noundef zeroext 80, i8 noundef zeroext -43)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call613)
  %cmp614 = icmp slt i32 %call613, 0
  br i1 %cmp614, label %do.end603.err_crit_edge, label %if.end617

do.end603.err_crit_edge:                          ; preds = %do.end603
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end617:                                        ; preds = %do.end603
  %247 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %config, align 4
  %demod_address619 = getelementptr inbounds %struct.mb86a20s_config, ptr %248, i32 0, i32 1
  %249 = ptrtoint ptr %demod_address619 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %demod_address619, align 4
  %call620 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %250, i8 noundef zeroext 81, i8 noundef zeroext %244)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call620)
  %cmp621 = icmp slt i32 %call620, 0
  br i1 %cmp621, label %if.end617.err_crit_edge, label %if.end624

if.end617.err_crit_edge:                          ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end624:                                        ; preds = %if.end617
  call void @__sanitizer_cov_trace_pc() #10
  %251 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %config, align 4
  %demod_address626 = getelementptr inbounds %struct.mb86a20s_config, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %demod_address626 to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %demod_address626, align 4
  %call627 = call fastcc i32 @mb86a20s_i2c_writeregdata(ptr noundef %1, i8 noundef zeroext %254, ptr noundef nonnull @mb86a20s_init2, i32 noundef 231)
  br label %err

err:                                              ; preds = %if.end624, %if.end617.err_crit_edge, %do.end603.err_crit_edge, %if.end575.err_crit_edge, %if.end565.err_crit_edge, %if.end555.err_crit_edge, %if.end547.err_crit_edge, %mb86a20s_i2c_writereg.exit1016.err_crit_edge, %mb86a20s_i2c_writereg.exit1003.err_crit_edge, %mb86a20s_i2c_writereg.exit990.err_crit_edge, %mb86a20s_i2c_writereg.exit977.err_crit_edge, %mb86a20s_i2c_writereg.exit963.err_crit_edge, %mb86a20s_i2c_writereg.exit950.err_crit_edge, %mb86a20s_i2c_writereg.exit937.err_crit_edge, %mb86a20s_i2c_writereg.exit.err_crit_edge, %mb86a20s_i2c_writereg.exit.i.4.err_crit_edge, %mb86a20s_i2c_writereg.exit.i.3.err_crit_edge, %mb86a20s_i2c_writereg.exit.i.2.err_crit_edge, %mb86a20s_i2c_writereg.exit.i.1.err_crit_edge, %mb86a20s_i2c_writereg.exit.i.err_crit_edge
  %rc.0 = phi i32 [ %call.i, %mb86a20s_i2c_writereg.exit.err_crit_edge ], [ %call.i931, %mb86a20s_i2c_writereg.exit937.err_crit_edge ], [ %call.i944, %mb86a20s_i2c_writereg.exit950.err_crit_edge ], [ %call.i957, %mb86a20s_i2c_writereg.exit963.err_crit_edge ], [ %call.i972, %mb86a20s_i2c_writereg.exit977.err_crit_edge ], [ %call.i984, %mb86a20s_i2c_writereg.exit990.err_crit_edge ], [ %call.i997, %mb86a20s_i2c_writereg.exit1003.err_crit_edge ], [ %call.i1010, %mb86a20s_i2c_writereg.exit1016.err_crit_edge ], [ %call551, %if.end547.err_crit_edge ], [ %call561, %if.end555.err_crit_edge ], [ %call571, %if.end565.err_crit_edge ], [ %call580, %if.end575.err_crit_edge ], [ %call613, %do.end603.err_crit_edge ], [ %call620, %if.end617.err_crit_edge ], [ %call627, %if.end624 ], [ %call.i.i, %mb86a20s_i2c_writereg.exit.i.err_crit_edge ], [ %call.i.i.1, %mb86a20s_i2c_writereg.exit.i.1.err_crit_edge ], [ %call.i.i.2, %mb86a20s_i2c_writereg.exit.i.2.err_crit_edge ], [ %call.i.i.3, %mb86a20s_i2c_writereg.exit.i.3.err_crit_edge ], [ %call.i.i.4, %mb86a20s_i2c_writereg.exit.i.4.err_crit_edge ]
  %255 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool634.not = icmp eq ptr %256, null
  br i1 %tobool634.not, label %err.if.end639_crit_edge, label %if.then635

err.if.end639_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end639

if.then635:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  %call638 = call i32 %256(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end639

if.end639:                                        ; preds = %if.then635, %err.if.end639_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp640 = icmp slt i32 %rc.0, 0
  %need_init = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 10
  br i1 %cmp640, label %if.then642, label %if.else648

if.then642:                                       ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #10
  %257 = ptrtoint ptr %need_init to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 1, ptr %need_init, align 4
  %258 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %1, align 4
  %dev647 = getelementptr inbounds %struct.i2c_adapter, ptr %259, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev647, ptr noundef nonnull @.str.15) #12
  br label %if.end668

if.else648:                                       ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %need_init to i32
  call void @__asan_store1_noabort(i32 %260)
  store i8 0, ptr %need_init, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_initfe, %if.then662)) #8
          to label %if.end668 [label %if.then662], !srcloc !240

if.then662:                                       ; preds = %if.else648
  call void @__sanitizer_cov_trace_pc() #10
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 4
  %dev664 = getelementptr inbounds %struct.i2c_adapter, ptr %262, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_initfe.__UNIQUE_ID_ddebug327, ptr noundef %dev664, ptr noundef nonnull @.str.16) #8
  br label %if.end668

if.end668:                                        ; preds = %if.then662, %if.else648, %if.then642
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb86a20s_tune(ptr noundef %fe, i1 noundef zeroext %re_tune, i32 noundef %mode_flags, ptr nocapture noundef readnone %delay, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_tune.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_tune, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_tune.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %re_tune, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 @mb86a20s_set_frontend(ptr noundef %fe)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %rc.0 = phi i32 [ %call6, %if.then5 ], [ 0, %do.end.if.end7_crit_edge ]
  %and = and i32 %mode_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then9, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @mb86a20s_read_status_and_stats(ptr noundef %fe, ptr noundef %status)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  ret i32 %rc.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mb86a20s_get_frontend_algo(ptr nocapture noundef readnone %fe) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb86a20s_set_frontend(ptr noundef %fe) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %if_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_freq) #8
  %2 = ptrtoint ptr %if_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %if_freq, align 4, !annotation !241
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_set_frontend.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_set_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_set_frontend.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %isdbt_layer_enabled = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %5 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %isdbt_layer_enabled, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end.if.else_crit_edge [
    i8 0, label %if.end6.thread
    i8 1, label %if.then9
  ]

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end6.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 7, ptr %isdbt_layer_enabled, align 4
  br label %if.else

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %bw = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %bw, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end6.thread, %do.end.if.else_crit_edge
  %isdbt_partial_reception = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 17
  %10 = ptrtoint ptr %isdbt_partial_reception to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %isdbt_partial_reception, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool10.not = icmp eq i8 %11, 0
  %bw14 = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 5
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %bw14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %bw14, align 4
  br label %if.end16

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %bw14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %bw14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11, %if.then9
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %14 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp17 = icmp eq i32 %15, 1
  %spec.select = zext i1 %cmp17 to i8
  %16 = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 4
  %isdbt_sb_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 18
  %18 = ptrtoint ptr %isdbt_sb_mode to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %isdbt_sb_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool24.not = icmp eq i8 %19, 0
  br i1 %tobool24.not, label %if.end16.if.end36_crit_edge, label %if.else26

if.end16.if.end36_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.else26:                                        ; preds = %if.end16
  %isdbt_sb_subchannel = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 19
  %20 = ptrtoint ptr %isdbt_sb_subchannel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %isdbt_sb_subchannel, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %21)
  %cmp28 = icmp ugt i8 %21, 7
  br i1 %cmp28, label %if.then30, label %if.else26.if.end32_crit_edge

if.else26.if.end32_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %isdbt_sb_subchannel to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %isdbt_sb_subchannel, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.else26.if.end32_crit_edge
  %23 = ptrtoint ptr %isdbt_sb_subchannel to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %isdbt_sb_subchannel, align 2
  %idxprom = zext i8 %24 to i32
  %arrayidx = getelementptr [8 x i8], ptr @mb86a20s_subchannel, i32 0, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %conv34 = zext i8 %26 to i32
  br label %if.end36

if.end36:                                         ; preds = %if.end32, %if.end16.if.end36_crit_edge
  %conv34.sink = phi i32 [ %conv34, %if.end32 ], [ 0, %if.end16.if.end36_crit_edge ]
  %subchannel35 = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %subchannel35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv34.sink, ptr %subchannel35, align 4
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %28 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool37.not = icmp eq ptr %29, null
  br i1 %tobool37.not, label %if.end36.if.end42_crit_edge, label %if.then38

if.end36.if.end42_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 %29(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %if.end36.if.end42_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %30 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_params, align 4
  %call44 = tail call i32 %31(ptr noundef %fe) #8
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %32 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_if_frequency, align 4
  %tobool47.not = icmp eq ptr %33, null
  br i1 %tobool47.not, label %if.end42.if.end53_crit_edge, label %if.then48

if.end42.if.end53_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %call52 = call i32 %33(ptr noundef %fe, ptr noundef nonnull %if_freq) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %if.end42.if.end53_crit_edge
  %call54 = call i32 @mb86a20s_initfe(ptr noundef %fe)
  %34 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool57.not = icmp eq ptr %35, null
  br i1 %tobool57.not, label %if.end53.if.end62_crit_edge, label %if.then58

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 %35(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %if.end53.if.end62_crit_edge
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %demod_address, align 4
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %41 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %conv.i.i = zext i8 %39 to i16
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %42 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 112, ptr %buf.i.i, align 1
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -16, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %41, align 4
  %45 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %46 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %flags.i.i, align 2
  %47 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %mb86a20s_i2c_writereg.exit.thread.i, label %mb86a20s_i2c_writereg.exit.i

mb86a20s_i2c_writereg.exit.thread.i:              ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i

mb86a20s_i2c_writereg.exit.i:                     ; preds = %if.end62
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i, i32 noundef 112, i32 noundef 240) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %mb86a20s_i2c_writereg.exit.i.mb86a20s_i2c_writeregdata.exit_crit_edge, label %mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge

mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

mb86a20s_i2c_writereg.exit.i.mb86a20s_i2c_writeregdata.exit_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mb86a20s_i2c_writeregdata.exit

for.inc.i:                                        ; preds = %mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge, %mb86a20s_i2c_writereg.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %52 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 112, ptr %buf.i.i, align 1
  %53 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %54 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 196607, ptr %41, align 4
  %55 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i.i, align 2
  %57 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i.i.1 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.1)
  %cmp.not.i.i.1 = icmp eq i32 %call.i.i.1, 1
  br i1 %cmp.not.i.i.1, label %mb86a20s_i2c_writereg.exit.thread.i.1, label %mb86a20s_i2c_writereg.exit.i.1

mb86a20s_i2c_writereg.exit.i.1:                   ; preds = %for.inc.i
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev.i.i.1 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.1, i32 noundef 112, i32 noundef 255) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp2.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp2.i.1, label %mb86a20s_i2c_writereg.exit.i.1.mb86a20s_i2c_writeregdata.exit_crit_edge, label %mb86a20s_i2c_writereg.exit.i.1.for.inc.i.1_crit_edge

mb86a20s_i2c_writereg.exit.i.1.for.inc.i.1_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.1

mb86a20s_i2c_writereg.exit.i.1.mb86a20s_i2c_writeregdata.exit_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mb86a20s_i2c_writeregdata.exit

mb86a20s_i2c_writereg.exit.thread.i.1:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.1, %mb86a20s_i2c_writereg.exit.i.1.for.inc.i.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %62 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 8, ptr %buf.i.i, align 1
  %63 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %64 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196607, ptr %41, align 4
  %65 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %66 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i.i, align 2
  %67 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %call.i.i.2 = call i32 @i2c_transfer(ptr noundef %69, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.2)
  %cmp.not.i.i.2 = icmp eq i32 %call.i.i.2, 1
  br i1 %cmp.not.i.i.2, label %mb86a20s_i2c_writereg.exit.thread.i.2, label %mb86a20s_i2c_writereg.exit.i.2

mb86a20s_i2c_writereg.exit.i.2:                   ; preds = %for.inc.i.1
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 4
  %dev.i.i.2 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.2, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.2, i32 noundef 8, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp2.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp2.i.2, label %mb86a20s_i2c_writereg.exit.i.2.mb86a20s_i2c_writeregdata.exit_crit_edge, label %mb86a20s_i2c_writereg.exit.i.2.for.inc.i.2_crit_edge

mb86a20s_i2c_writereg.exit.i.2.for.inc.i.2_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.2

mb86a20s_i2c_writereg.exit.i.2.mb86a20s_i2c_writeregdata.exit_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mb86a20s_i2c_writeregdata.exit

mb86a20s_i2c_writereg.exit.thread.i.2:            ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.2, %mb86a20s_i2c_writereg.exit.i.2.for.inc.i.2_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %72 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 8, ptr %buf.i.i, align 1
  %73 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %74 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 196607, ptr %41, align 4
  %75 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 0, ptr %flags.i.i, align 2
  %77 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 4
  %call.i.i.3 = call i32 @i2c_transfer(ptr noundef %79, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.3)
  %cmp.not.i.i.3 = icmp eq i32 %call.i.i.3, 1
  br i1 %cmp.not.i.i.3, label %mb86a20s_i2c_writereg.exit.thread.i.3, label %mb86a20s_i2c_writereg.exit.i.3

mb86a20s_i2c_writereg.exit.i.3:                   ; preds = %for.inc.i.2
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %1, align 4
  %dev.i.i.3 = getelementptr inbounds %struct.i2c_adapter, ptr %81, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i.3, i32 noundef 8, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp2.i.3 = icmp slt i32 %call.i.i.3, 0
  br i1 %cmp2.i.3, label %mb86a20s_i2c_writereg.exit.i.3.mb86a20s_i2c_writeregdata.exit_crit_edge, label %mb86a20s_i2c_writereg.exit.i.3.for.inc.i.3_crit_edge

mb86a20s_i2c_writereg.exit.i.3.for.inc.i.3_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.3

mb86a20s_i2c_writereg.exit.i.3.mb86a20s_i2c_writeregdata.exit_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mb86a20s_i2c_writeregdata.exit

mb86a20s_i2c_writereg.exit.thread.i.3:            ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %mb86a20s_i2c_writereg.exit.thread.i.3, %mb86a20s_i2c_writereg.exit.i.3.for.inc.i.3_crit_edge
  br label %mb86a20s_i2c_writeregdata.exit

mb86a20s_i2c_writeregdata.exit:                   ; preds = %for.inc.i.3, %mb86a20s_i2c_writereg.exit.i.3.mb86a20s_i2c_writeregdata.exit_crit_edge, %mb86a20s_i2c_writereg.exit.i.2.mb86a20s_i2c_writeregdata.exit_crit_edge, %mb86a20s_i2c_writereg.exit.i.1.mb86a20s_i2c_writeregdata.exit_crit_edge, %mb86a20s_i2c_writereg.exit.i.mb86a20s_i2c_writeregdata.exit_crit_edge
  %retval.0.i111 = phi i32 [ %call.i.i, %mb86a20s_i2c_writereg.exit.i.mb86a20s_i2c_writeregdata.exit_crit_edge ], [ %call.i.i.1, %mb86a20s_i2c_writereg.exit.i.1.mb86a20s_i2c_writeregdata.exit_crit_edge ], [ %call.i.i.2, %mb86a20s_i2c_writereg.exit.i.2.mb86a20s_i2c_writeregdata.exit_crit_edge ], [ %call.i.i.3, %mb86a20s_i2c_writereg.exit.i.3.mb86a20s_i2c_writeregdata.exit_crit_edge ], [ 0, %for.inc.i.3 ]
  call fastcc void @mb86a20s_reset_counters(ptr noundef %fe)
  call fastcc void @mb86a20s_stats_not_ready(ptr noundef %fe)
  %82 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool67.not = icmp eq ptr %83, null
  br i1 %tobool67.not, label %mb86a20s_i2c_writeregdata.exit.if.end72_crit_edge, label %if.then68

mb86a20s_i2c_writeregdata.exit.if.end72_crit_edge: ; preds = %mb86a20s_i2c_writeregdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then68:                                        ; preds = %mb86a20s_i2c_writeregdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = call i32 %83(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end72

if.end72:                                         ; preds = %if.then68, %mb86a20s_i2c_writeregdata.exit.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_freq) #8
  ret i32 %retval.0.i111
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mb86a20s_read_status_and_stats(ptr noundef %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_read_status_and_stats.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_read_status_and_stats, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_read_status_and_stats.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %4 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 %5(ptr noundef %fe, i32 noundef 0) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @mb86a20s_read_status(ptr noundef %fe, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call9)
  %cmp = icmp slt i32 %call9, 7
  br i1 %cmp, label %if.then10, label %if.end8.if.end19_crit_edge

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then10:                                        ; preds = %if.end8
  tail call fastcc void @mb86a20s_stats_not_ready(ptr noundef %fe)
  %6 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_read_status_and_stats, %if.then.i)) #8
          to label %if.end11 [label %if.then.i], !srcloc !240

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then10
  %delivery_system.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %10 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %delivery_system.i, align 4
  %bandwidth_hz.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %11 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6000000, ptr %bandwidth_hz.i, align 4
  %isdbt_layer_enabled.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %12 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %isdbt_layer_enabled.i, align 4
  %transmission_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %13 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %transmission_mode.i, align 4
  %guard_interval.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %14 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %guard_interval.i, align 4
  %isdbt_sb_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 18
  %15 = ptrtoint ptr %isdbt_sb_mode.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %isdbt_sb_mode.i, align 1
  %isdbt_sb_segment_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 21
  %16 = ptrtoint ptr %isdbt_sb_segment_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %isdbt_sb_segment_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp12 = icmp slt i32 %call9, 0
  br i1 %cmp12, label %do.end16, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %dev18 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.24) #12
  br label %error

if.end19:                                         ; preds = %if.end11.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %call20 = tail call fastcc i32 @mb86a20s_read_signal_strength(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end19
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %dev27 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.24) #12
  tail call fastcc void @mb86a20s_stats_not_ready(ptr noundef %fe)
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_read_status_and_stats, %if.then.i89)) #8
          to label %mb86a20s_reset_frontend_cache.exit97 [label %if.then.i89], !srcloc !240

if.then.i89:                                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %dev.i88 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, ptr noundef %dev.i88, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37) #8
  br label %mb86a20s_reset_frontend_cache.exit97

mb86a20s_reset_frontend_cache.exit97:             ; preds = %if.then.i89, %do.end25
  %delivery_system.i90 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %25 = ptrtoint ptr %delivery_system.i90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %delivery_system.i90, align 4
  %bandwidth_hz.i91 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %26 = ptrtoint ptr %bandwidth_hz.i91 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6000000, ptr %bandwidth_hz.i91, align 4
  %isdbt_layer_enabled.i92 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %27 = ptrtoint ptr %isdbt_layer_enabled.i92 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %isdbt_layer_enabled.i92, align 4
  %transmission_mode.i93 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %28 = ptrtoint ptr %transmission_mode.i93 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %transmission_mode.i93, align 4
  %guard_interval.i94 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %29 = ptrtoint ptr %guard_interval.i94 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %guard_interval.i94, align 4
  %isdbt_sb_mode.i95 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 18
  %30 = ptrtoint ptr %isdbt_sb_mode.i95 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %isdbt_sb_mode.i95, align 1
  %isdbt_sb_segment_count.i96 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 21
  %31 = ptrtoint ptr %isdbt_sb_segment_count.i96 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %isdbt_sb_segment_count.i96, align 4
  br label %error

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call9)
  %cmp29 = icmp ugt i32 %call9, 6
  br i1 %cmp29, label %if.then30, label %if.end28.ok_crit_edge

if.end28.ok_crit_edge:                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok

if.then30:                                        ; preds = %if.end28
  %call31 = tail call fastcc i32 @mb86a20s_get_frontend(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %dev38 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.24) #12
  br label %error

if.end39:                                         ; preds = %if.then30
  %call40 = tail call fastcc i32 @mb86a20s_get_stats(ptr noundef %fe, i32 noundef %call9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call40)
  %cmp41 = icmp sgt i32 %call40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call40)
  %cmp42.not = icmp eq i32 %call40, -16
  %or.cond = or i1 %cmp41, %cmp42.not
  br i1 %or.cond, label %if.end39.ok_crit_edge, label %do.end46

if.end39.ok_crit_edge:                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %dev48 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev48, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.24) #12
  br label %error

error:                                            ; preds = %do.end46, %do.end36, %mb86a20s_reset_frontend_cache.exit97, %do.end16
  %rc.0 = phi i32 [ %call9, %do.end16 ], [ 0, %mb86a20s_reset_frontend_cache.exit97 ], [ 0, %do.end36 ], [ 0, %do.end46 ]
  tail call fastcc void @mb86a20s_stats_not_ready(ptr noundef %fe)
  br label %ok

ok:                                               ; preds = %error, %if.end39.ok_crit_edge, %if.end28.ok_crit_edge
  %rc.1 = phi i32 [ %rc.0, %error ], [ %call20, %if.end28.ok_crit_edge ], [ 0, %if.end39.ok_crit_edge ]
  %36 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool53.not = icmp eq ptr %37, null
  br i1 %tobool53.not, label %ok.if.end58_crit_edge, label %if.then54

ok.if.end58_crit_edge:                            ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %ok
  call void @__sanitizer_cov_trace_pc() #10
  %call57 = tail call i32 %37(ptr noundef %fe, i32 noundef 1) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %ok.if.end58_crit_edge
  ret i32 %rc.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mb86a20s_read_signal_strength_from_cache(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %0, align 1
  %conv = trunc i64 %2 to i16
  %3 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_i2c_writeregdata(ptr nocapture noundef readonly %state, i8 noundef zeroext %i2c_addr, ptr nocapture noundef readonly %rd, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp11 = icmp sgt i32 %size, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %conv.i = zext i8 %i2c_addr to i16
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.regdata, ptr %rd, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %data = getelementptr %struct.regdata, ptr %rd, i32 %i.012, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %buf.i, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %5, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %1, align 4
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %msg.i, align 4
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags.i, align 2
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf1.i, align 4
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %for.inc

mb86a20s_i2c_writereg.exit:                       ; preds = %for.body
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 9
  %conv4.i = zext i8 %3 to i32
  %conv5.i = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef %conv4.i, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.for.inc_crit_edge

mb86a20s_i2c_writereg.exit.for.inc_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %mb86a20s_i2c_writereg.exit.for.inc_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call.i, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_i2c_writereg(ptr nocapture noundef readonly %state, i8 noundef zeroext %i2c_addr, i8 noundef zeroext %reg, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %data, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #8
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %conv = zext i8 %i2c_addr to i16
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buf, ptr %buf1, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state, align 4
  %call = call i32 @i2c_transfer(ptr noundef %10, ptr noundef nonnull %msg, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9
  %conv4 = zext i8 %reg to i32
  %conv5 = zext i8 %data to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call, i32 noundef %conv4, i32 noundef %conv5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb86a20s_reset_counters(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i73 = alloca [2 x i8], align 1
  %msg.i74 = alloca %struct.i2c_msg, align 4
  %buf.i60 = alloca [2 x i8], align 1
  %msg.i61 = alloca %struct.i2c_msg, align 4
  %reg.addr.i38 = alloca i8, align 1
  %val.i39 = alloca i8, align 1
  %msg.i40 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i26 = alloca [2 x i8], align 1
  %msg.i27 = alloca %struct.i2c_msg, align 4
  %buf.i13 = alloca [2 x i8], align 1
  %msg.i14 = alloca %struct.i2c_msg, align 4
  %buf.i3 = alloca [2 x i8], align 1
  %msg.i4 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_reset_counters.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_reset_counters, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_reset_counters.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %last_frequency = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %last_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_frequency, align 4
  %6 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %do.end.if.end6_crit_edge, label %if.then3

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %8 = call ptr @memset(ptr %cnr, i32 0, i32 259)
  %9 = ptrtoint ptr %last_frequency to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %last_frequency, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %do.end.if.end6_crit_edge
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %demod_address, align 4
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %15 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %conv.i.i = zext i8 %13 to i16
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end6
  %i.012.i = phi i32 [ 0, %if.end6 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.regdata, ptr @mb86a20s_per_ber_reset, i32 %i.012.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %data.i = getelementptr %struct.regdata, ptr @mb86a20s_per_ber_reset, i32 %i.012.i, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %buf.i.i, align 1
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196607, ptr %15, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i.i, align 2
  %25 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %mb86a20s_i2c_writereg.exit.thread.i, label %mb86a20s_i2c_writereg.exit.i

mb86a20s_i2c_writereg.exit.thread.i:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %for.inc.i

mb86a20s_i2c_writereg.exit.i:                     ; preds = %for.body.i
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  %conv4.i.i = zext i8 %17 to i32
  %conv5.i.i = zext i8 %19 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i, i32 noundef %conv4.i.i, i32 noundef %conv5.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %mb86a20s_i2c_writereg.exit.i.do.end66_crit_edge, label %mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge

mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

mb86a20s_i2c_writereg.exit.i.do.end66_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

for.inc.i:                                        ; preds = %mb86a20s_i2c_writereg.exit.i.for.inc.i_crit_edge, %mb86a20s_i2c_writereg.exit.thread.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %if.end10, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end10:                                         ; preds = %for.inc.i
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config, align 4
  %demod_address12 = getelementptr inbounds %struct.mb86a20s_config, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %demod_address12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %demod_address12, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %34 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 69, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %36 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  %conv.i = zext i8 %33 to i16
  %38 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i, align 2
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 1, ptr %36, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %41 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %42 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %43 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %44 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %45 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %val.i, ptr %buf5.i, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %mb86a20s_i2c_readreg.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %51 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %do.end66

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end10
  %52 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %54 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config, align 4
  %demod_address18 = getelementptr inbounds %struct.mb86a20s_config, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %demod_address18 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %demod_address18, align 4
  %conv = or i8 %53, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #8
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i3, i32 0, i32 1
  %59 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 69, ptr %buf.i3, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i4) #8
  %61 = getelementptr inbounds i8, ptr %msg.i4, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 196607, ptr %61, align 4
  %conv.i5 = zext i8 %57 to i16
  %63 = ptrtoint ptr %msg.i4 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i5, ptr %msg.i4, align 4
  %flags.i6 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 1
  %64 = ptrtoint ptr %flags.i6 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %flags.i6, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i4, i32 0, i32 3
  %65 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %buf.i3, ptr %buf1.i, align 4
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 4
  %call.i8 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msg.i4, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 1
  br i1 %cmp.not.i9, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #8
  br label %if.end23

mb86a20s_i2c_writereg.exit:                       ; preds = %mb86a20s_i2c_readreg.exit
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 4
  %dev.i10 = getelementptr inbounds %struct.i2c_adapter, ptr %69, i32 0, i32 9
  %conv5.i = zext i8 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i8, i32 noundef 69, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp20 = icmp slt i32 %call.i8, 0
  br i1 %cmp20, label %mb86a20s_i2c_writereg.exit.do.end66_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end23_crit_edge

mb86a20s_i2c_writereg.exit.if.end23_crit_edge:    ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

mb86a20s_i2c_writereg.exit.do.end66_crit_edge:    ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end23:                                         ; preds = %mb86a20s_i2c_writereg.exit.if.end23_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %70 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config, align 4
  %demod_address25 = getelementptr inbounds %struct.mb86a20s_config, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %demod_address25 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %demod_address25, align 4
  %conv26 = and i8 %53, 111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i13) #8
  %74 = getelementptr inbounds [2 x i8], ptr %buf.i13, i32 0, i32 1
  %75 = ptrtoint ptr %buf.i13 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 69, ptr %buf.i13, align 1
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv26, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i14) #8
  %77 = getelementptr inbounds i8, ptr %msg.i14, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 196607, ptr %77, align 4
  %conv.i15 = zext i8 %73 to i16
  %79 = ptrtoint ptr %msg.i14 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv.i15, ptr %msg.i14, align 4
  %flags.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 1
  %80 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %flags.i16, align 2
  %buf1.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i14, i32 0, i32 3
  %81 = ptrtoint ptr %buf1.i18 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %buf.i13, ptr %buf1.i18, align 4
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call.i19 = call i32 @i2c_transfer(ptr noundef %83, ptr noundef nonnull %msg.i14, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i19)
  %cmp.not.i20 = icmp eq i32 %call.i19, 1
  br i1 %cmp.not.i20, label %mb86a20s_i2c_writereg.exit25.thread, label %mb86a20s_i2c_writereg.exit25

mb86a20s_i2c_writereg.exit25.thread:              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i13) #8
  br label %if.end31

mb86a20s_i2c_writereg.exit25:                     ; preds = %if.end23
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %1, align 4
  %dev.i21 = getelementptr inbounds %struct.i2c_adapter, ptr %85, i32 0, i32 9
  %conv5.i22 = zext i8 %conv26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i21, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i19, i32 noundef 69, i32 noundef %conv5.i22) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp28 = icmp slt i32 %call.i19, 0
  br i1 %cmp28, label %mb86a20s_i2c_writereg.exit25.do.end66_crit_edge, label %mb86a20s_i2c_writereg.exit25.if.end31_crit_edge

mb86a20s_i2c_writereg.exit25.if.end31_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

mb86a20s_i2c_writereg.exit25.do.end66_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end31:                                         ; preds = %mb86a20s_i2c_writereg.exit25.if.end31_crit_edge, %mb86a20s_i2c_writereg.exit25.thread
  %86 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %config, align 4
  %demod_address33 = getelementptr inbounds %struct.mb86a20s_config, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %demod_address33 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %demod_address33, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i26) #8
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i26, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 80, ptr %buf.i26, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 80, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i27) #8
  %93 = getelementptr inbounds i8, ptr %msg.i27, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 196607, ptr %93, align 4
  %conv.i28 = zext i8 %89 to i16
  %95 = ptrtoint ptr %msg.i27 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i28, ptr %msg.i27, align 4
  %flags.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 1
  %96 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %flags.i29, align 2
  %buf1.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i27, i32 0, i32 3
  %97 = ptrtoint ptr %buf1.i31 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %buf.i26, ptr %buf1.i31, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  %call.i32 = call i32 @i2c_transfer(ptr noundef %99, ptr noundef nonnull %msg.i27, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i32)
  %cmp.not.i33 = icmp eq i32 %call.i32, 1
  br i1 %cmp.not.i33, label %mb86a20s_i2c_writereg.exit37.thread, label %mb86a20s_i2c_writereg.exit37

mb86a20s_i2c_writereg.exit37.thread:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i27) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i26) #8
  br label %if.end38

mb86a20s_i2c_writereg.exit37:                     ; preds = %if.end31
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %dev.i34 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i34, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i32, i32 noundef 80, i32 noundef 80) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i27) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %cmp35 = icmp slt i32 %call.i32, 0
  br i1 %cmp35, label %mb86a20s_i2c_writereg.exit37.do.end66_crit_edge, label %mb86a20s_i2c_writereg.exit37.if.end38_crit_edge

mb86a20s_i2c_writereg.exit37.if.end38_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

mb86a20s_i2c_writereg.exit37.do.end66_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end38:                                         ; preds = %mb86a20s_i2c_writereg.exit37.if.end38_crit_edge, %mb86a20s_i2c_writereg.exit37.thread
  %102 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %config, align 4
  %demod_address40 = getelementptr inbounds %struct.mb86a20s_config, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %demod_address40 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %demod_address40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i38)
  %106 = ptrtoint ptr %reg.addr.i38 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 81, ptr %reg.addr.i38, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i39) #8
  %107 = ptrtoint ptr %val.i39 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 -1, ptr %val.i39, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i40) #8
  %108 = getelementptr inbounds i8, ptr %msg.i40, i32 4
  %109 = call ptr @memset(ptr %108, i32 255, i32 16)
  %conv.i41 = zext i8 %105 to i16
  %110 = ptrtoint ptr %msg.i40 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i41, ptr %msg.i40, align 4
  %flags.i42 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i42 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %flags.i42, align 2
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %108, align 4
  %buf.i44 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 0, i32 3
  %113 = ptrtoint ptr %buf.i44 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %reg.addr.i38, ptr %buf.i44, align 4
  %arrayinit.element.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1
  %114 = ptrtoint ptr %arrayinit.element.i45 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i41, ptr %arrayinit.element.i45, align 4
  %flags3.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1, i32 1
  %115 = ptrtoint ptr %flags3.i46 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1, ptr %flags3.i46, align 2
  %len4.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1, i32 2
  %116 = ptrtoint ptr %len4.i47 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 1, ptr %len4.i47, align 4
  %buf5.i48 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i40, i32 1, i32 3
  %117 = ptrtoint ptr %buf5.i48 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %val.i39, ptr %buf5.i48, align 4
  %118 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %1, align 4
  %call.i49 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %msg.i40, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i49)
  %cmp.not.i50 = icmp eq i32 %call.i49, 2
  br i1 %cmp.not.i50, label %mb86a20s_i2c_readreg.exit59, label %do.end.i55

do.end.i55:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %dev.i51 = getelementptr inbounds %struct.i2c_adapter, ptr %121, i32 0, i32 9
  %122 = ptrtoint ptr %reg.addr.i38 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %reg.addr.i38, align 1
  %conv8.i52 = zext i8 %123 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i51, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i52, i32 noundef %call.i49) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp9.i53 = icmp slt i32 %call.i49, 0
  %spec.select104 = select i1 %cmp9.i53, i32 %call.i49, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i40) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i39) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i38)
  br label %do.end66

mb86a20s_i2c_readreg.exit59:                      ; preds = %if.end38
  %124 = ptrtoint ptr %val.i39 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %val.i39, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i40) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i39) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i38)
  %126 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %config, align 4
  %demod_address47 = getelementptr inbounds %struct.mb86a20s_config, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %demod_address47 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %demod_address47, align 4
  %conv49 = or i8 %125, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i60) #8
  %130 = getelementptr inbounds [2 x i8], ptr %buf.i60, i32 0, i32 1
  %131 = ptrtoint ptr %buf.i60 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 81, ptr %buf.i60, align 1
  %132 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %conv49, ptr %130, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i61) #8
  %133 = getelementptr inbounds i8, ptr %msg.i61, i32 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 196607, ptr %133, align 4
  %conv.i62 = zext i8 %129 to i16
  %135 = ptrtoint ptr %msg.i61 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 %conv.i62, ptr %msg.i61, align 4
  %flags.i63 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 1
  %136 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %flags.i63, align 2
  %buf1.i65 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i61, i32 0, i32 3
  %137 = ptrtoint ptr %buf1.i65 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %buf.i60, ptr %buf1.i65, align 4
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %call.i66 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i61, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i66)
  %cmp.not.i67 = icmp eq i32 %call.i66, 1
  br i1 %cmp.not.i67, label %mb86a20s_i2c_writereg.exit72.thread, label %mb86a20s_i2c_writereg.exit72

mb86a20s_i2c_writereg.exit72.thread:              ; preds = %mb86a20s_i2c_readreg.exit59
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i61) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i60) #8
  br label %if.end54

mb86a20s_i2c_writereg.exit72:                     ; preds = %mb86a20s_i2c_readreg.exit59
  %140 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %1, align 4
  %dev.i68 = getelementptr inbounds %struct.i2c_adapter, ptr %141, i32 0, i32 9
  %conv5.i69 = zext i8 %conv49 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i68, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i66, i32 noundef 81, i32 noundef %conv5.i69) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i61) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp51 = icmp slt i32 %call.i66, 0
  br i1 %cmp51, label %mb86a20s_i2c_writereg.exit72.do.end66_crit_edge, label %mb86a20s_i2c_writereg.exit72.if.end54_crit_edge

mb86a20s_i2c_writereg.exit72.if.end54_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

mb86a20s_i2c_writereg.exit72.do.end66_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

if.end54:                                         ; preds = %mb86a20s_i2c_writereg.exit72.if.end54_crit_edge, %mb86a20s_i2c_writereg.exit72.thread
  %142 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %config, align 4
  %demod_address56 = getelementptr inbounds %struct.mb86a20s_config, ptr %143, i32 0, i32 1
  %144 = ptrtoint ptr %demod_address56 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %demod_address56, align 4
  %conv58 = and i8 %125, 6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73) #8
  %146 = getelementptr inbounds [2 x i8], ptr %buf.i73, i32 0, i32 1
  %147 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 81, ptr %buf.i73, align 1
  %148 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv58, ptr %146, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74) #8
  %149 = getelementptr inbounds i8, ptr %msg.i74, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 196607, ptr %149, align 4
  %conv.i75 = zext i8 %145 to i16
  %151 = ptrtoint ptr %msg.i74 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv.i75, ptr %msg.i74, align 4
  %flags.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i76 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %flags.i76, align 2
  %buf1.i78 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 3
  %153 = ptrtoint ptr %buf1.i78 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %buf.i73, ptr %buf1.i78, align 4
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 4
  %call.i79 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i74, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i79)
  %cmp.not.i80 = icmp eq i32 %call.i79, 1
  br i1 %cmp.not.i80, label %mb86a20s_i2c_writereg.exit85.thread, label %mb86a20s_i2c_writereg.exit85

mb86a20s_i2c_writereg.exit85.thread:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #8
  br label %ok

mb86a20s_i2c_writereg.exit85:                     ; preds = %if.end54
  %156 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %1, align 4
  %dev.i81 = getelementptr inbounds %struct.i2c_adapter, ptr %157, i32 0, i32 9
  %conv5.i82 = zext i8 %conv58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i79, i32 noundef 81, i32 noundef %conv5.i82) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp60 = icmp slt i32 %call.i79, 0
  br i1 %cmp60, label %mb86a20s_i2c_writereg.exit85.do.end66_crit_edge, label %mb86a20s_i2c_writereg.exit85.ok_crit_edge

mb86a20s_i2c_writereg.exit85.ok_crit_edge:        ; preds = %mb86a20s_i2c_writereg.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %ok

mb86a20s_i2c_writereg.exit85.do.end66_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end66

do.end66:                                         ; preds = %mb86a20s_i2c_writereg.exit85.do.end66_crit_edge, %mb86a20s_i2c_writereg.exit72.do.end66_crit_edge, %do.end.i55, %mb86a20s_i2c_writereg.exit37.do.end66_crit_edge, %mb86a20s_i2c_writereg.exit25.do.end66_crit_edge, %mb86a20s_i2c_writereg.exit.do.end66_crit_edge, %do.end.i, %mb86a20s_i2c_writereg.exit.i.do.end66_crit_edge
  %rc.0 = phi i32 [ %call.i8, %mb86a20s_i2c_writereg.exit.do.end66_crit_edge ], [ %call.i19, %mb86a20s_i2c_writereg.exit25.do.end66_crit_edge ], [ %call.i32, %mb86a20s_i2c_writereg.exit37.do.end66_crit_edge ], [ %call.i66, %mb86a20s_i2c_writereg.exit72.do.end66_crit_edge ], [ %call.i79, %mb86a20s_i2c_writereg.exit85.do.end66_crit_edge ], [ %spec.select, %do.end.i ], [ %spec.select104, %do.end.i55 ], [ %call.i.i, %mb86a20s_i2c_writereg.exit.i.do.end66_crit_edge ]
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %dev68 = getelementptr inbounds %struct.i2c_adapter, ptr %159, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %rc.0) #12
  br label %ok

ok:                                               ; preds = %do.end66, %mb86a20s_i2c_writereg.exit85.ok_crit_edge, %mb86a20s_i2c_writereg.exit85.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb86a20s_stats_not_ready(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_stats_not_ready.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_stats_not_ready, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_stats_not_ready.__UNIQUE_ID_ddebug322, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %strength = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %4 = ptrtoint ptr %strength to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %strength, align 4
  %cnr = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %5 = ptrtoint ptr %cnr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %cnr, align 1
  %pre_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44
  %6 = ptrtoint ptr %pre_bit_error to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %pre_bit_error, align 2
  %pre_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45
  %7 = ptrtoint ptr %pre_bit_count to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %pre_bit_count, align 1
  %post_bit_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %8 = ptrtoint ptr %post_bit_error to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 4, ptr %post_bit_error, align 4
  %post_bit_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47
  %9 = ptrtoint ptr %post_bit_count to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %post_bit_count, align 1
  %block_error = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48
  %10 = ptrtoint ptr %block_error to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 4, ptr %block_error, align 2
  %block_count = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49
  %11 = ptrtoint ptr %block_count to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 4, ptr %block_count, align 1
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %stat, align 1
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 0, ptr %13, align 1
  %arrayidx16 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx16, align 1
  %arrayidx20 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 0
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx20, align 1
  %arrayidx24 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 0
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %arrayidx24, align 1
  %arrayidx28 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx28, align 1
  %arrayidx32 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx32, align 1
  %arrayidx36 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx36, align 1
  %arrayidx40 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx40, align 1
  %arrayidx16.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 1
  %22 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx16.1, align 1
  %arrayidx20.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 1
  %23 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx20.1, align 1
  %arrayidx24.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx24.1, align 1
  %arrayidx28.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx28.1, align 1
  %arrayidx32.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %arrayidx32.1, align 1
  %arrayidx36.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx36.1, align 1
  %arrayidx40.1 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx40.1, align 1
  %arrayidx16.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx16.2, align 1
  %arrayidx20.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx20.2, align 1
  %arrayidx24.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 2
  %31 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx24.2, align 1
  %arrayidx28.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 2
  %32 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx28.2, align 1
  %arrayidx32.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 2
  %33 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx32.2, align 1
  %arrayidx36.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx36.2, align 1
  %arrayidx40.2 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 2
  %35 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx40.2, align 1
  %arrayidx16.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 3
  %36 = ptrtoint ptr %arrayidx16.3 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx16.3, align 1
  %arrayidx20.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 3
  %37 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx20.3, align 1
  %arrayidx24.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 3
  %38 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx24.3, align 1
  %arrayidx28.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 3
  %39 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx28.3, align 1
  %arrayidx32.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 3
  %40 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx32.3, align 1
  %arrayidx36.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 3
  %41 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx36.3, align 1
  %arrayidx40.3 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx40.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx40.3, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %status, align 4
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %7 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 10, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 255, i32 16)
  %conv.i = zext i8 %6 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %9, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %17 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val.i, ptr %buf5.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %mb86a20s_i2c_readreg.exit, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 9
  %23 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %entry
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %27 = and i8 %26, 15
  %and = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp1 = icmp ugt i8 %27, 1
  br i1 %cmp1, label %if.end3, label %mb86a20s_i2c_readreg.exit.do.body_crit_edge

mb86a20s_i2c_readreg.exit.do.body_crit_edge:      ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end3:                                          ; preds = %mb86a20s_i2c_readreg.exit
  %28 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status, align 4
  %or = or i32 %29, 1
  store i32 %or, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp4 = icmp ugt i8 %27, 3
  br i1 %cmp4, label %if.end7, label %if.end3.do.body_crit_edge

if.end3.do.body_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end7:                                          ; preds = %if.end3
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %or6 = or i32 %31, 2
  store i32 %or6, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %cmp8.not = icmp eq i8 %27, 4
  br i1 %cmp8.not, label %if.end7.do.body_crit_edge, label %if.end11

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end11:                                         ; preds = %if.end7
  %32 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status, align 4
  %or10 = or i32 %33, 4
  store i32 %or10, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp12 = icmp ugt i8 %27, 6
  br i1 %cmp12, label %if.end15, label %if.end11.do.body_crit_edge

if.end11.do.body_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end15:                                         ; preds = %if.end11
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %or14 = or i32 %35, 8
  store i32 %or14, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %27)
  %cmp16 = icmp ugt i8 %27, 8
  br i1 %cmp16, label %if.then17, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %or18 = or i32 %37, 16
  store i32 %or18, ptr %status, align 4
  br label %do.body

do.body:                                          ; preds = %if.then17, %if.end15.do.body_crit_edge, %if.end11.do.body_crit_edge, %if.end7.do.body_crit_edge, %if.end3.do.body_crit_edge, %mb86a20s_i2c_readreg.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_read_status.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_read_status, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !240

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_read_status.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, i32 noundef %41, i32 noundef %and) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %do.end.i
  %retval.0 = phi i32 [ %and, %if.then23 ], [ %spec.select, %do.end.i ], [ %and, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_read_signal_strength(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i161 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i148 = alloca [2 x i8], align 1
  %msg.i149 = alloca %struct.i2c_msg, align 4
  %buf.i136 = alloca [2 x i8], align 1
  %msg.i137 = alloca %struct.i2c_msg, align 4
  %buf.i124 = alloca [2 x i8], align 1
  %msg.i125 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %get_strength_time = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %get_strength_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %get_strength_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %5, align 1
  %conv = trunc i64 %7 to i32
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %8, align 1
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = getelementptr inbounds [2 x i8], ptr %buf.i124, i32 0, i32 1
  %13 = getelementptr inbounds i8, ptr %msg.i125, i32 4
  %flags.i127 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125, i32 0, i32 1
  %buf1.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i125, i32 0, i32 3
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i136, i32 0, i32 1
  %15 = getelementptr inbounds i8, ptr %msg.i137, i32 4
  %flags.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i137, i32 0, i32 1
  %buf1.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i137, i32 0, i32 3
  %16 = getelementptr inbounds [2 x i8], ptr %buf.i148, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %msg.i149, i32 4
  %flags.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i149, i32 0, i32 1
  %buf1.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i149, i32 0, i32 3
  %18 = getelementptr inbounds i8, ptr %msg.i161, i32 4
  %flags.i163 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 0, i32 1
  %buf.i165 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 1, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 1, i32 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i161, i32 1, i32 3
  br label %do.body

do.body:                                          ; preds = %mb86a20s_i2c_readreg.exit.do.body_crit_edge, %if.end
  %rf_max.0 = phi i32 [ 4095, %if.end ], [ %div121.rf_max.0, %mb86a20s_i2c_readreg.exit.do.body_crit_edge ]
  %rf_min.0 = phi i32 [ 0, %if.end ], [ %rf_min.0.div121, %mb86a20s_i2c_readreg.exit.do.body_crit_edge ]
  %add = add i32 %rf_min.0, %rf_max.0
  %div121 = lshr i32 %add, 1
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 4, ptr %buf.i, align 1
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 31, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %11, align 4
  %conv.i = zext i8 %22 to i16
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %msg.i, align 4
  %27 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i, align 2
  %28 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i, ptr %buf1.i, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end8

mb86a20s_i2c_writereg.exit:                       ; preds = %do.body
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef 4, i32 noundef 31) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end8_crit_edge

mb86a20s_i2c_writereg.exit.if.end8_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %mb86a20s_i2c_writereg.exit.if.end8_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %33 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config, align 4
  %demod_address10 = getelementptr inbounds %struct.mb86a20s_config, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %demod_address10 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %demod_address10, align 4
  %shr = lshr i32 %add, 9
  %conv11 = trunc i32 %shr to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i124) #8
  %37 = ptrtoint ptr %buf.i124 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 5, ptr %buf.i124, align 1
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv11, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i125) #8
  %39 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 196607, ptr %13, align 4
  %conv.i126 = zext i8 %36 to i16
  %40 = ptrtoint ptr %msg.i125 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i126, ptr %msg.i125, align 4
  %41 = ptrtoint ptr %flags.i127 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i127, align 2
  %42 = ptrtoint ptr %buf1.i129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %buf.i124, ptr %buf1.i129, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i130 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %msg.i125, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i130)
  %cmp.not.i131 = icmp eq i32 %call.i130, 1
  br i1 %cmp.not.i131, label %mb86a20s_i2c_writereg.exit135.thread, label %mb86a20s_i2c_writereg.exit135

mb86a20s_i2c_writereg.exit135.thread:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i124) #8
  br label %if.end16

mb86a20s_i2c_writereg.exit135:                    ; preds = %if.end8
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %dev.i132 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 9
  %conv5.i = and i32 %shr, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i132, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i130, i32 noundef 5, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i125) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i124) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp13 = icmp slt i32 %call.i130, 0
  br i1 %cmp13, label %mb86a20s_i2c_writereg.exit135.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit135.if.end16_crit_edge

mb86a20s_i2c_writereg.exit135.if.end16_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

mb86a20s_i2c_writereg.exit135.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit135
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %mb86a20s_i2c_writereg.exit135.if.end16_crit_edge, %mb86a20s_i2c_writereg.exit135.thread
  %47 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config, align 4
  %demod_address18 = getelementptr inbounds %struct.mb86a20s_config, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %demod_address18 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %demod_address18, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i136) #8
  %51 = ptrtoint ptr %buf.i136 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 4, ptr %buf.i136, align 1
  %52 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 32, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i137) #8
  %53 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 196607, ptr %15, align 4
  %conv.i138 = zext i8 %50 to i16
  %54 = ptrtoint ptr %msg.i137 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i138, ptr %msg.i137, align 4
  %55 = ptrtoint ptr %flags.i139 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i139, align 2
  %56 = ptrtoint ptr %buf1.i141 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %buf.i136, ptr %buf1.i141, align 4
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i142 = call i32 @i2c_transfer(ptr noundef %58, ptr noundef nonnull %msg.i137, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i142)
  %cmp.not.i143 = icmp eq i32 %call.i142, 1
  br i1 %cmp.not.i143, label %mb86a20s_i2c_writereg.exit147.thread, label %mb86a20s_i2c_writereg.exit147

mb86a20s_i2c_writereg.exit147.thread:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i137) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i136) #8
  br label %if.end23

mb86a20s_i2c_writereg.exit147:                    ; preds = %if.end16
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %dev.i144 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i144, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i142, i32 noundef 4, i32 noundef 32) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i137) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i136) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %cmp20 = icmp slt i32 %call.i142, 0
  br i1 %cmp20, label %mb86a20s_i2c_writereg.exit147.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit147.if.end23_crit_edge

mb86a20s_i2c_writereg.exit147.if.end23_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

mb86a20s_i2c_writereg.exit147.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %mb86a20s_i2c_writereg.exit147.if.end23_crit_edge, %mb86a20s_i2c_writereg.exit147.thread
  %61 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %config, align 4
  %demod_address25 = getelementptr inbounds %struct.mb86a20s_config, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %demod_address25 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %demod_address25, align 4
  %conv26 = trunc i32 %div121 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i148) #8
  %65 = ptrtoint ptr %buf.i148 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 5, ptr %buf.i148, align 1
  %66 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv26, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i149) #8
  %67 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %17, align 4
  %conv.i150 = zext i8 %64 to i16
  %68 = ptrtoint ptr %msg.i149 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i150, ptr %msg.i149, align 4
  %69 = ptrtoint ptr %flags.i151 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i151, align 2
  %70 = ptrtoint ptr %buf1.i153 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i148, ptr %buf1.i153, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i154 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i149, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i154)
  %cmp.not.i155 = icmp eq i32 %call.i154, 1
  br i1 %cmp.not.i155, label %mb86a20s_i2c_writereg.exit160.thread, label %mb86a20s_i2c_writereg.exit160

mb86a20s_i2c_writereg.exit160.thread:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i149) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i148) #8
  br label %if.end31

mb86a20s_i2c_writereg.exit160:                    ; preds = %if.end23
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %dev.i156 = getelementptr inbounds %struct.i2c_adapter, ptr %74, i32 0, i32 9
  %conv5.i157 = and i32 %div121, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i156, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i154, i32 noundef 5, i32 noundef %conv5.i157) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i149) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i148) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp28 = icmp slt i32 %call.i154, 0
  br i1 %cmp28, label %mb86a20s_i2c_writereg.exit160.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit160.if.end31_crit_edge

mb86a20s_i2c_writereg.exit160.if.end31_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

mb86a20s_i2c_writereg.exit160.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit160
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %mb86a20s_i2c_writereg.exit160.if.end31_crit_edge, %mb86a20s_i2c_writereg.exit160.thread
  %75 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config, align 4
  %demod_address33 = getelementptr inbounds %struct.mb86a20s_config, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %demod_address33 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %demod_address33, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %79 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 2, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %80 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i161) #8
  %81 = call ptr @memset(ptr %18, i32 255, i32 16)
  %conv.i162 = zext i8 %78 to i16
  %82 = ptrtoint ptr %msg.i161 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i162, ptr %msg.i161, align 4
  %83 = ptrtoint ptr %flags.i163 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i163, align 2
  %84 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %18, align 4
  %85 = ptrtoint ptr %buf.i165 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg.addr.i, ptr %buf.i165, align 4
  %86 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i162, ptr %arrayinit.element.i, align 4
  %87 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags3.i, align 2
  %88 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %len4.i, align 4
  %89 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %val.i, ptr %buf5.i, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call.i166 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i161, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i166)
  %cmp.not.i167 = icmp eq i32 %call.i166, 2
  br i1 %cmp.not.i167, label %mb86a20s_i2c_readreg.exit, label %do.end.i169

do.end.i169:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %dev.i168 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %95 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i168, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i166) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp9.i = icmp slt i32 %call.i166, 0
  %spec.select182 = select i1 %cmp9.i, i32 %call.i166, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i161) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end31
  %96 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i161) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %98 = and i8 %97, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool39.not = icmp eq i8 %98, 0
  %div121.rf_max.0 = select i1 %tobool39.not, i32 %div121, i32 %rf_max.0
  %rf_min.0.div121 = select i1 %tobool39.not, i32 %rf_min.0, i32 %div121
  %sub46 = sub i32 %div121.rf_max.0, %rf_min.0.div121
  %cmp47 = icmp ult i32 %sub46, 4
  br i1 %cmp47, label %if.then49, label %mb86a20s_i2c_readreg.exit.do.body_crit_edge

mb86a20s_i2c_readreg.exit.do.body_crit_edge:      ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then49:                                        ; preds = %mb86a20s_i2c_readreg.exit
  %add50 = add i32 %div121.rf_max.0, %rf_min.0.div121
  %99 = shl i32 %add50, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %99)
  %tobool52.not = icmp ult i32 %99, 16
  %or = or i32 %99, 4095
  %spec.select = select i1 %tobool52.not, i32 0, i32 %or
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_read_signal_strength.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_read_signal_strength, %if.then60)) #8
          to label %do.end [label %if.then60], !srcloc !240

if.then60:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 9
  %shr61 = lshr i32 %spec.select, 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_read_signal_strength.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %spec.select, i32 noundef %rf_min.0.div121, i32 noundef %shr61, i32 noundef %div121.rf_max.0) #8
  br label %do.end

do.end:                                           ; preds = %if.then60, %if.then49
  %conv63 = zext i32 %spec.select to i64
  %102 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 %conv63, ptr %8, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %103 = load volatile i32, ptr @jiffies, align 128
  %add68 = add i32 %103, 100
  %104 = ptrtoint ptr %get_strength_time to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add68, ptr %get_strength_time, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.end.i169, %mb86a20s_i2c_writereg.exit160.cleanup_crit_edge, %mb86a20s_i2c_writereg.exit147.cleanup_crit_edge, %mb86a20s_i2c_writereg.exit135.cleanup_crit_edge, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.then ], [ %spec.select182, %do.end.i169 ], [ %call.i154, %mb86a20s_i2c_writereg.exit160.cleanup_crit_edge ], [ %call.i142, %mb86a20s_i2c_writereg.exit147.cleanup_crit_edge ], [ %call.i130, %mb86a20s_i2c_writereg.exit135.cleanup_crit_edge ], [ %call.i, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_frontend(ptr noundef %fe) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i410 = alloca i8, align 1
  %val.i411 = alloca i8, align 1
  %msg.i412 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i398 = alloca [2 x i8], align 1
  %msg.i399 = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i361 = alloca i8, align 1
  %val.i.i362 = alloca i8, align 1
  %msg.i19.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i363 = alloca [2 x i8], align 1
  %msg.i.i364 = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i326 = alloca i8, align 1
  %val.i.i327 = alloca i8, align 1
  %msg.i22.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i328 = alloca [2 x i8], align 1
  %msg.i.i329 = alloca %struct.i2c_msg, align 4
  %reg.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  %msg.i21.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i313 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_frontend.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then.i)) #8
          to label %mb86a20s_reset_frontend_cache.exit [label %if.then.i], !srcloc !240

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, ptr noundef %dev.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37) #8
  br label %mb86a20s_reset_frontend_cache.exit

mb86a20s_reset_frontend_cache.exit:               ; preds = %if.then.i, %do.end
  %delivery_system.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %8 = ptrtoint ptr %delivery_system.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %delivery_system.i, align 4
  %bandwidth_hz.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %9 = ptrtoint ptr %bandwidth_hz.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6000000, ptr %bandwidth_hz.i, align 4
  %isdbt_layer_enabled.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %10 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %isdbt_layer_enabled.i, align 4
  %transmission_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %11 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %transmission_mode.i, align 4
  %guard_interval.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %12 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %guard_interval.i, align 4
  %isdbt_sb_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 18
  %13 = ptrtoint ptr %isdbt_sb_mode.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %isdbt_sb_mode.i, align 1
  %isdbt_sb_segment_count.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 21
  %14 = ptrtoint ptr %isdbt_sb_segment_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %isdbt_sb_segment_count.i, align 4
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 109, ptr %buf.i, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -123, ptr %19, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %22 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 196607, ptr %22, align 4
  %conv.i = zext i8 %18 to i16
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %26 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %buf.i, ptr %buf1.i, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %mb86a20s_reset_frontend_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end5

mb86a20s_i2c_writereg.exit:                       ; preds = %mb86a20s_reset_frontend_cache.exit
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %dev.i311 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i311, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef 109, i32 noundef 133) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end5_crit_edge

mb86a20s_i2c_writereg.exit.if.end5_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %mb86a20s_i2c_writereg.exit.if.end5_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config, align 4
  %demod_address7 = getelementptr inbounds %struct.mb86a20s_config, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %demod_address7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %demod_address7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %35 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 110, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i313) #8
  %37 = getelementptr inbounds i8, ptr %msg.i313, i32 4
  %38 = call ptr @memset(ptr %37, i32 255, i32 16)
  %conv.i314 = zext i8 %34 to i16
  %39 = ptrtoint ptr %msg.i313 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i314, ptr %msg.i313, align 4
  %flags.i315 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 1
  %40 = ptrtoint ptr %flags.i315 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %flags.i315, align 2
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %37, align 4
  %buf.i317 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i317 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %reg.addr.i, ptr %buf.i317, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 1
  %43 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i314, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 1, i32 1
  %44 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 1, i32 2
  %45 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 1, i32 3
  %46 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %val.i, ptr %buf5.i, align 4
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i318 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg.i313, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i318)
  %cmp.not.i319 = icmp eq i32 %call.i318, 2
  br i1 %cmp.not.i319, label %mb86a20s_i2c_readreg.exit, label %do.end.i321

do.end.i321:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %dev.i320 = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i320, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i318) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %cmp9.i = icmp slt i32 %call.i318, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i318, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i313) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end5
  %53 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i313) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %55 = lshr i8 %54, 4
  %56 = and i8 %55, 1
  %isdbt_partial_reception = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 17
  %57 = ptrtoint ptr %isdbt_partial_reception to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %isdbt_partial_reception, align 4
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %59 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %60 = getelementptr inbounds i8, ptr %msg.i21.i, i32 4
  %flags.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 1
  %buf.i25.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 1
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 1, i32 1
  %len4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 1, i32 2
  %buf5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i21.i, i32 1, i32 3
  %61 = getelementptr inbounds [2 x i8], ptr %buf.i.i328, i32 0, i32 1
  %62 = getelementptr inbounds i8, ptr %msg.i.i329, i32 4
  %flags.i.i335 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i329, i32 0, i32 1
  %buf1.i.i336 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i329, i32 0, i32 3
  %63 = getelementptr inbounds i8, ptr %msg.i22.i, i32 4
  %flags.i24.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 1
  %buf.i26.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 0, i32 3
  %arrayinit.element.i.i346 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 1
  %flags3.i.i347 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 1, i32 1
  %len4.i.i348 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 1, i32 2
  %buf5.i.i349 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i22.i, i32 1, i32 3
  %64 = getelementptr inbounds [2 x i8], ptr %buf.i.i363, i32 0, i32 1
  %65 = getelementptr inbounds i8, ptr %msg.i.i364, i32 4
  %flags.i.i370 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i364, i32 0, i32 1
  %buf1.i.i371 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i364, i32 0, i32 3
  %66 = getelementptr inbounds i8, ptr %msg.i19.i, i32 4
  %flags.i21.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 1
  %buf.i23.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 0, i32 3
  %arrayinit.element.i.i381 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 1
  %flags3.i.i382 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 1, i32 1
  %len4.i.i383 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 1, i32 2
  %buf5.i.i384 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19.i, i32 1, i32 3
  br label %do.body15

do.body15:                                        ; preds = %for.inc.do.body15_crit_edge, %mb86a20s_i2c_readreg.exit
  %layer.0473 = phi i32 [ 0, %mb86a20s_i2c_readreg.exit ], [ %inc, %for.inc.do.body15_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then27)) #8
          to label %do.end32 [label %if.then27], !srcloc !240

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %dev29 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 9
  %add = add nuw nsw i32 %layer.0473, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_frontend.__UNIQUE_ID_ddebug296, ptr noundef %dev29, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %add) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body15
  %call33 = call fastcc i32 @mb86a20s_get_segment_count(ptr noundef %1, i32 noundef %layer.0473)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end32.noperlayer_error_crit_edge, label %land.lhs.true

do.end32.noperlayer_error_crit_edge:              ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %noperlayer_error

land.lhs.true:                                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %call33)
  %cmp40 = icmp ult i32 %call33, 14
  br i1 %cmp40, label %if.end.i323, label %if.else

if.end.i323:                                      ; preds = %land.lhs.true
  %conv43 = trunc i32 %call33 to i8
  %arrayidx = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 23, i32 %layer.0473
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv43, ptr %arrayidx, align 4
  %shl = shl nuw nsw i32 1, %layer.0473
  %70 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %isdbt_layer_enabled.i, align 4
  %72 = trunc i32 %shl to i8
  %conv51 = or i8 %71, %72
  store i8 %conv51, ptr %isdbt_layer_enabled.i, align 4
  %73 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config, align 4
  %demod_address.i = getelementptr inbounds %struct.mb86a20s_config, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %demod_address.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %demod_address.i, align 4
  %arrayidx.i = getelementptr [3 x i8], ptr @mb86a20s_get_modulation.reg, i32 0, i32 %layer.0473
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #8
  %79 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 109, ptr %buf.i.i, align 1
  %80 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %78, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #8
  %81 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 196607, ptr %59, align 4
  %conv.i.i = zext i8 %76 to i16
  %82 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i.i, align 2
  %84 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %mb86a20s_i2c_writereg.exit.thread.i, label %mb86a20s_i2c_writereg.exit.i

mb86a20s_i2c_writereg.exit.thread.i:              ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  br label %if.end3.i

mb86a20s_i2c_writereg.exit.i:                     ; preds = %if.end.i323
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %88, i32 0, i32 9
  %conv5.i.i = zext i8 %78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i, i32 noundef 109, i32 noundef %conv5.i.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %mb86a20s_i2c_writereg.exit.i.noperlayer_error_crit_edge, label %mb86a20s_i2c_writereg.exit.i.if.end3.i_crit_edge

mb86a20s_i2c_writereg.exit.i.if.end3.i_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

mb86a20s_i2c_writereg.exit.i.noperlayer_error_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %noperlayer_error

if.end3.i:                                        ; preds = %mb86a20s_i2c_writereg.exit.i.if.end3.i_crit_edge, %mb86a20s_i2c_writereg.exit.thread.i
  %89 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %config, align 4
  %demod_address5.i = getelementptr inbounds %struct.mb86a20s_config, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %demod_address5.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %demod_address5.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %93 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 110, ptr %reg.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #8
  %94 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -1, ptr %val.i.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i21.i) #8
  %95 = call ptr @memset(ptr %60, i32 255, i32 16)
  %conv.i22.i = zext i8 %92 to i16
  %96 = ptrtoint ptr %msg.i21.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i22.i, ptr %msg.i21.i, align 4
  %97 = ptrtoint ptr %flags.i23.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %flags.i23.i, align 2
  %98 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 1, ptr %60, align 4
  %99 = ptrtoint ptr %buf.i25.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %reg.addr.i.i, ptr %buf.i25.i, align 4
  %100 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv.i22.i, ptr %arrayinit.element.i.i, align 4
  %101 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 1, ptr %flags3.i.i, align 2
  %102 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 1, ptr %len4.i.i, align 4
  %103 = ptrtoint ptr %buf5.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %val.i.i, ptr %buf5.i.i, align 4
  %104 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %1, align 4
  %call.i26.i = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %msg.i21.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i26.i)
  %cmp.not.i27.i = icmp eq i32 %call.i26.i, 2
  br i1 %cmp.not.i27.i, label %mb86a20s_i2c_readreg.exit.i, label %do.end.i29.i

do.end.i29.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  %dev.i28.i = getelementptr inbounds %struct.i2c_adapter, ptr %107, i32 0, i32 9
  %108 = ptrtoint ptr %reg.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %reg.addr.i.i, align 1
  %conv8.i.i = zext i8 %109 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i28.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i.i, i32 noundef %call.i26.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %cmp9.i.i = icmp slt i32 %call.i26.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i21.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %spec.select466 = select i1 %cmp9.i.i, i32 %call.i26.i, i32 -5
  br label %noperlayer_error

mb86a20s_i2c_readreg.exit.i:                      ; preds = %if.end3.i
  %110 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %val.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i21.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i) #8
  %112 = lshr i8 %111, 4
  %113 = and i8 %112, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %113)
  %114 = icmp ult i8 %113, 4
  br i1 %114, label %switch.lookup, label %mb86a20s_i2c_readreg.exit.i.do.body57_crit_edge

mb86a20s_i2c_readreg.exit.i.do.body57_crit_edge:  ; preds = %mb86a20s_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body57

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx46 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 23, i32 %layer.0473
  %115 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %arrayidx46, align 4
  br label %for.inc

switch.lookup:                                    ; preds = %mb86a20s_i2c_readreg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = zext i8 %113 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.mb86a20s_get_frontend, i32 0, i32 %and.i
  %116 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %116)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body57

do.body57:                                        ; preds = %switch.lookup, %mb86a20s_i2c_readreg.exit.i.do.body57_crit_edge
  %retval.0.i325.ph = phi i32 [ %switch.load, %switch.lookup ], [ 6, %mb86a20s_i2c_readreg.exit.i.do.body57_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then69)) #8
          to label %if.end.i339 [label %if.then69], !srcloc !240

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %dev71 = getelementptr inbounds %struct.i2c_adapter, ptr %118, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_frontend.__UNIQUE_ID_ddebug297, ptr noundef %dev71, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i325.ph) #8
  br label %if.end.i339

if.end.i339:                                      ; preds = %if.then69, %do.body57
  %modulation = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 23, i32 %layer.0473, i32 2
  %119 = ptrtoint ptr %modulation to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %retval.0.i325.ph, ptr %modulation, align 4
  %120 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %config, align 4
  %demod_address.i332 = getelementptr inbounds %struct.mb86a20s_config, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %demod_address.i332 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %demod_address.i332, align 4
  %arrayidx.i333 = getelementptr [3 x i8], ptr @mb86a20s_get_fec.reg, i32 0, i32 %layer.0473
  %124 = ptrtoint ptr %arrayidx.i333 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx.i333, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i328) #8
  %126 = ptrtoint ptr %buf.i.i328 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 109, ptr %buf.i.i328, align 1
  %127 = ptrtoint ptr %61 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %125, ptr %61, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i329) #8
  %128 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 196607, ptr %62, align 4
  %conv.i.i334 = zext i8 %123 to i16
  %129 = ptrtoint ptr %msg.i.i329 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i.i334, ptr %msg.i.i329, align 4
  %130 = ptrtoint ptr %flags.i.i335 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i.i335, align 2
  %131 = ptrtoint ptr %buf1.i.i336 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %buf.i.i328, ptr %buf1.i.i336, align 4
  %132 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %1, align 4
  %call.i.i337 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i.i329, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i337)
  %cmp.not.i.i338 = icmp eq i32 %call.i.i337, 1
  br i1 %cmp.not.i.i338, label %mb86a20s_i2c_writereg.exit.thread.i340, label %mb86a20s_i2c_writereg.exit.i344

mb86a20s_i2c_writereg.exit.thread.i340:           ; preds = %if.end.i339
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i329) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i328) #8
  br label %if.end3.i350

mb86a20s_i2c_writereg.exit.i344:                  ; preds = %if.end.i339
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %dev.i.i341 = getelementptr inbounds %struct.i2c_adapter, ptr %135, i32 0, i32 9
  %conv5.i.i342 = zext i8 %125 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i341, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i337, i32 noundef 109, i32 noundef %conv5.i.i342) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i329) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i328) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i337)
  %cmp1.i343 = icmp slt i32 %call.i.i337, 0
  br i1 %cmp1.i343, label %mb86a20s_i2c_writereg.exit.i344.noperlayer_error_crit_edge, label %mb86a20s_i2c_writereg.exit.i344.if.end3.i350_crit_edge

mb86a20s_i2c_writereg.exit.i344.if.end3.i350_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i350

mb86a20s_i2c_writereg.exit.i344.noperlayer_error_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i344
  call void @__sanitizer_cov_trace_pc() #10
  br label %noperlayer_error

if.end3.i350:                                     ; preds = %mb86a20s_i2c_writereg.exit.i344.if.end3.i350_crit_edge, %mb86a20s_i2c_writereg.exit.thread.i340
  %136 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %config, align 4
  %demod_address5.i345 = getelementptr inbounds %struct.mb86a20s_config, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %demod_address5.i345 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %demod_address5.i345, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i326) #8
  %140 = ptrtoint ptr %reg.addr.i.i326 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 110, ptr %reg.addr.i.i326, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i327) #8
  %141 = ptrtoint ptr %val.i.i327 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -1, ptr %val.i.i327, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i22.i) #8
  %142 = call ptr @memset(ptr %63, i32 255, i32 16)
  %conv.i23.i = zext i8 %139 to i16
  %143 = ptrtoint ptr %msg.i22.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv.i23.i, ptr %msg.i22.i, align 4
  %144 = ptrtoint ptr %flags.i24.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %flags.i24.i, align 2
  %145 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 1, ptr %63, align 4
  %146 = ptrtoint ptr %buf.i26.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %reg.addr.i.i326, ptr %buf.i26.i, align 4
  %147 = ptrtoint ptr %arrayinit.element.i.i346 to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 %conv.i23.i, ptr %arrayinit.element.i.i346, align 4
  %148 = ptrtoint ptr %flags3.i.i347 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 1, ptr %flags3.i.i347, align 2
  %149 = ptrtoint ptr %len4.i.i348 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %len4.i.i348, align 4
  %150 = ptrtoint ptr %buf5.i.i349 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %val.i.i327, ptr %buf5.i.i349, align 4
  %151 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %1, align 4
  %call.i27.i = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %msg.i22.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i27.i)
  %cmp.not.i28.i = icmp eq i32 %call.i27.i, 2
  br i1 %cmp.not.i28.i, label %mb86a20s_i2c_readreg.exit.i355, label %do.end.i30.i

do.end.i30.i:                                     ; preds = %if.end3.i350
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %dev.i29.i = getelementptr inbounds %struct.i2c_adapter, ptr %154, i32 0, i32 9
  %155 = ptrtoint ptr %reg.addr.i.i326 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %reg.addr.i.i326, align 1
  %conv8.i.i351 = zext i8 %156 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i29.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i.i351, i32 noundef %call.i27.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %cmp9.i.i352 = icmp slt i32 %call.i27.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i327) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i326) #8
  %spec.select467 = select i1 %cmp9.i.i352, i32 %call.i27.i, i32 -5
  br label %noperlayer_error

mb86a20s_i2c_readreg.exit.i355:                   ; preds = %if.end3.i350
  %157 = ptrtoint ptr %val.i.i327 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %val.i.i327, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i22.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i327) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i326) #8
  %159 = lshr i8 %158, 4
  %160 = and i8 %159, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %160)
  %161 = icmp ult i8 %160, 5
  br i1 %161, label %switch.lookup485, label %mb86a20s_i2c_readreg.exit.i355.do.body82_crit_edge

mb86a20s_i2c_readreg.exit.i355.do.body82_crit_edge: ; preds = %mb86a20s_i2c_readreg.exit.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

switch.lookup485:                                 ; preds = %mb86a20s_i2c_readreg.exit.i355
  call void @__sanitizer_cov_trace_pc() #10
  %and.i354 = zext i8 %160 to i32
  %switch.gep486 = getelementptr inbounds [5 x i32], ptr @switch.table.mb86a20s_get_frontend.76, i32 0, i32 %and.i354
  %162 = ptrtoint ptr %switch.gep486 to i32
  call void @__asan_load4_noabort(i32 %162)
  %switch.load487 = load i32, ptr %switch.gep486, align 4
  br label %do.body82

do.body82:                                        ; preds = %switch.lookup485, %mb86a20s_i2c_readreg.exit.i355.do.body82_crit_edge
  %retval.0.i360.ph = phi i32 [ %switch.load487, %switch.lookup485 ], [ 9, %mb86a20s_i2c_readreg.exit.i355.do.body82_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then94)) #8
          to label %if.end.i374 [label %if.then94], !srcloc !240

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %dev96 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_frontend.__UNIQUE_ID_ddebug298, ptr noundef %dev96, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i360.ph) #8
  br label %if.end.i374

if.end.i374:                                      ; preds = %if.then94, %do.body82
  %fec = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 23, i32 %layer.0473, i32 1
  %165 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %retval.0.i360.ph, ptr %fec, align 4
  %166 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %config, align 4
  %demod_address.i367 = getelementptr inbounds %struct.mb86a20s_config, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %demod_address.i367 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %demod_address.i367, align 4
  %arrayidx.i368 = getelementptr [3 x i8], ptr @mb86a20s_get_interleaving.reg, i32 0, i32 %layer.0473
  %170 = ptrtoint ptr %arrayidx.i368 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i368, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i363) #8
  %172 = ptrtoint ptr %buf.i.i363 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 109, ptr %buf.i.i363, align 1
  %173 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %171, ptr %64, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i364) #8
  %174 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 196607, ptr %65, align 4
  %conv.i.i369 = zext i8 %169 to i16
  %175 = ptrtoint ptr %msg.i.i364 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv.i.i369, ptr %msg.i.i364, align 4
  %176 = ptrtoint ptr %flags.i.i370 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %flags.i.i370, align 2
  %177 = ptrtoint ptr %buf1.i.i371 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %buf.i.i363, ptr %buf1.i.i371, align 4
  %178 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %1, align 4
  %call.i.i372 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %msg.i.i364, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i372)
  %cmp.not.i.i373 = icmp eq i32 %call.i.i372, 1
  br i1 %cmp.not.i.i373, label %mb86a20s_i2c_writereg.exit.thread.i375, label %mb86a20s_i2c_writereg.exit.i379

mb86a20s_i2c_writereg.exit.thread.i375:           ; preds = %if.end.i374
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i364) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i363) #8
  br label %if.end3.i385

mb86a20s_i2c_writereg.exit.i379:                  ; preds = %if.end.i374
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %1, align 4
  %dev.i.i376 = getelementptr inbounds %struct.i2c_adapter, ptr %181, i32 0, i32 9
  %conv5.i.i377 = zext i8 %171 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i376, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i.i372, i32 noundef 109, i32 noundef %conv5.i.i377) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i364) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i363) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i372)
  %cmp1.i378 = icmp slt i32 %call.i.i372, 0
  br i1 %cmp1.i378, label %mb86a20s_i2c_writereg.exit.i379.noperlayer_error_crit_edge, label %mb86a20s_i2c_writereg.exit.i379.if.end3.i385_crit_edge

mb86a20s_i2c_writereg.exit.i379.if.end3.i385_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i379
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i385

mb86a20s_i2c_writereg.exit.i379.noperlayer_error_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit.i379
  call void @__sanitizer_cov_trace_pc() #10
  br label %noperlayer_error

if.end3.i385:                                     ; preds = %mb86a20s_i2c_writereg.exit.i379.if.end3.i385_crit_edge, %mb86a20s_i2c_writereg.exit.thread.i375
  %182 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %config, align 4
  %demod_address5.i380 = getelementptr inbounds %struct.mb86a20s_config, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %demod_address5.i380 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %demod_address5.i380, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i361) #8
  %186 = ptrtoint ptr %reg.addr.i.i361 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 110, ptr %reg.addr.i.i361, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i362) #8
  %187 = ptrtoint ptr %val.i.i362 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 -1, ptr %val.i.i362, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i19.i) #8
  %188 = call ptr @memset(ptr %66, i32 255, i32 16)
  %conv.i20.i = zext i8 %185 to i16
  %189 = ptrtoint ptr %msg.i19.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv.i20.i, ptr %msg.i19.i, align 4
  %190 = ptrtoint ptr %flags.i21.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 0, ptr %flags.i21.i, align 2
  %191 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 1, ptr %66, align 4
  %192 = ptrtoint ptr %buf.i23.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %reg.addr.i.i361, ptr %buf.i23.i, align 4
  %193 = ptrtoint ptr %arrayinit.element.i.i381 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv.i20.i, ptr %arrayinit.element.i.i381, align 4
  %194 = ptrtoint ptr %flags3.i.i382 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 1, ptr %flags3.i.i382, align 2
  %195 = ptrtoint ptr %len4.i.i383 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 1, ptr %len4.i.i383, align 4
  %196 = ptrtoint ptr %buf5.i.i384 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %val.i.i362, ptr %buf5.i.i384, align 4
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  %call.i24.i = call i32 @i2c_transfer(ptr noundef %198, ptr noundef nonnull %msg.i19.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i24.i)
  %cmp.not.i25.i = icmp eq i32 %call.i24.i, 2
  br i1 %cmp.not.i25.i, label %mb86a20s_get_interleaving.exit, label %do.end.i27.i

do.end.i27.i:                                     ; preds = %if.end3.i385
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %dev.i26.i = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 9
  %201 = ptrtoint ptr %reg.addr.i.i361 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %reg.addr.i.i361, align 1
  %conv8.i.i386 = zext i8 %202 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i26.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i.i386, i32 noundef %call.i24.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp9.i.i387 = icmp slt i32 %call.i24.i, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i19.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i362) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i361) #8
  %spec.select468 = select i1 %cmp9.i.i387, i32 %call.i24.i, i32 -5
  br label %noperlayer_error

mb86a20s_get_interleaving.exit:                   ; preds = %if.end3.i385
  %203 = ptrtoint ptr %val.i.i362 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %val.i.i362, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i19.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i362) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i361) #8
  %205 = lshr i8 %204, 4
  %206 = and i8 %205, 7
  %and.i389 = zext i8 %206 to i32
  %arrayidx10.i = getelementptr [5 x i32], ptr @mb86a20s_get_interleaving.interleaving, i32 0, i32 %and.i389
  %207 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx10.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then119)) #8
          to label %do.end124 [label %if.then119], !srcloc !240

if.then119:                                       ; preds = %mb86a20s_get_interleaving.exit
  call void @__sanitizer_cov_trace_pc() #10
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 4
  %dev121 = getelementptr inbounds %struct.i2c_adapter, ptr %210, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_frontend.__UNIQUE_ID_ddebug299, ptr noundef %dev121, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.40, i32 noundef %208) #8
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %mb86a20s_get_interleaving.exit
  %conv125 = trunc i32 %208 to i8
  %interleaving = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 23, i32 %layer.0473, i32 3
  %211 = ptrtoint ptr %interleaving to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 %conv125, ptr %interleaving, align 4
  %212 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %modulation, align 4
  %214 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %fec, align 4
  %switch.tableidx = add i32 %215, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %216 = icmp ult i32 %switch.tableidx, 6
  br i1 %216, label %switch.lookup488, label %do.end124.sw.epilog13.i_crit_edge

do.end124.sw.epilog13.i_crit_edge:                ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog13.i

switch.lookup488:                                 ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep489 = getelementptr inbounds [6 x i32], ptr @switch.table.mb86a20s_get_frontend.77, i32 0, i32 %switch.tableidx
  %217 = ptrtoint ptr %switch.gep489 to i32
  call void @__asan_load4_noabort(i32 %217)
  %switch.load490 = load i32, ptr %switch.gep489, align 4
  br label %sw.epilog13.i

sw.epilog13.i:                                    ; preds = %switch.lookup488, %do.end124.sw.epilog13.i_crit_edge
  %fec.0.i = phi i32 [ 0, %do.end124.sw.epilog13.i_crit_edge ], [ %switch.load490, %switch.lookup488 ]
  %218 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %guard_interval.i, align 4
  %220 = call i32 @llvm.usub.sat.i32(i32 3, i32 %219)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %213)
  %switch.selectcmp30.i = icmp eq i32 %213, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %213)
  %switch.selectcmp.i = icmp eq i32 %213, 1
  %switch.select.i = zext i1 %switch.selectcmp.i to i32
  %switch.select31.i = select i1 %switch.selectcmp30.i, i32 2, i32 %switch.select.i
  %arrayidx22.i = getelementptr [3 x [5 x [4 x i32]]], ptr @isdbt_rate, i32 0, i32 %switch.select31.i, i32 %fec.0.i, i32 %220
  %221 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %arrayidx22.i, align 4
  %223 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx, align 4
  %conv.i397 = zext i8 %224 to i32
  %mul.i = mul i32 %222, %conv.i397
  %225 = call i32 @llvm.smin.i32(i32 %mul.i, i32 16777215)
  %226 = call i32 @llvm.smax.i32(i32 %225, i32 256)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_frontend, %if.then150)) #8
          to label %for.inc [label %if.then150], !srcloc !240

if.then150:                                       ; preds = %sw.epilog13.i
  call void @__sanitizer_cov_trace_pc() #10
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %1, align 4
  %dev152 = getelementptr inbounds %struct.i2c_adapter, ptr %228, i32 0, i32 9
  %add153 = add nuw nsw i32 %layer.0473, 65
  %div = sdiv i32 %mul.i, 1000
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_frontend.__UNIQUE_ID_ddebug300, ptr noundef %dev152, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.40, i32 noundef %add153, i32 noundef %div, i32 noundef %226, i32 noundef %226) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then150, %sw.epilog13.i, %if.else
  %.sink = phi i32 [ 0, %if.else ], [ %226, %sw.epilog13.i ], [ %226, %if.then150 ]
  %arrayidx158 = getelementptr %struct.mb86a20s_state, ptr %1, i32 0, i32 8, i32 %layer.0473
  %229 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %.sink, ptr %arrayidx158, align 4
  %inc = add nuw nsw i32 %layer.0473, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.do.body15_crit_edge

for.inc.do.body15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

for.end:                                          ; preds = %for.inc
  %230 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %config, align 4
  %demod_address160 = getelementptr inbounds %struct.mb86a20s_config, ptr %231, i32 0, i32 1
  %232 = ptrtoint ptr %demod_address160 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %demod_address160, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i398) #8
  %234 = getelementptr inbounds [2 x i8], ptr %buf.i398, i32 0, i32 1
  %235 = ptrtoint ptr %buf.i398 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 109, ptr %buf.i398, align 1
  %236 = ptrtoint ptr %234 to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 -124, ptr %234, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i399) #8
  %237 = getelementptr inbounds i8, ptr %msg.i399, i32 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 196607, ptr %237, align 4
  %conv.i400 = zext i8 %233 to i16
  %239 = ptrtoint ptr %msg.i399 to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 %conv.i400, ptr %msg.i399, align 4
  %flags.i401 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i399, i32 0, i32 1
  %240 = ptrtoint ptr %flags.i401 to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 0, ptr %flags.i401, align 2
  %buf1.i403 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i399, i32 0, i32 3
  %241 = ptrtoint ptr %buf1.i403 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %buf.i398, ptr %buf1.i403, align 4
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %1, align 4
  %call.i404 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %msg.i399, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i404)
  %cmp.not.i405 = icmp eq i32 %call.i404, 1
  br i1 %cmp.not.i405, label %if.end165.thread, label %mb86a20s_i2c_writereg.exit409

if.end165.thread:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i399) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i398) #8
  br label %if.end174

mb86a20s_i2c_writereg.exit409:                    ; preds = %for.end
  %244 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %1, align 4
  %dev.i406 = getelementptr inbounds %struct.i2c_adapter, ptr %245, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i406, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i404, i32 noundef 109, i32 noundef 132) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i399) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i398) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i404)
  %cmp162 = icmp slt i32 %call.i404, 0
  br i1 %cmp162, label %mb86a20s_i2c_writereg.exit409.cleanup_crit_edge, label %if.end165

mb86a20s_i2c_writereg.exit409.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit409
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end165:                                        ; preds = %mb86a20s_i2c_writereg.exit409
  %and166 = and i32 %call.i404, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and166)
  %cmp167 = icmp eq i32 %and166, 32
  br i1 %cmp167, label %if.then169, label %if.end165.if.end174_crit_edge

if.end165.if.end174_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then169:                                       ; preds = %if.end165
  %246 = ptrtoint ptr %isdbt_sb_mode.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 1, ptr %isdbt_sb_mode.i, align 1
  %247 = ptrtoint ptr %isdbt_sb_segment_count.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %isdbt_sb_segment_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %248)
  %tobool170.not = icmp eq i32 %248, 0
  br i1 %tobool170.not, label %if.then171, label %if.then169.if.end174_crit_edge

if.then169.if.end174_crit_edge:                   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

if.then171:                                       ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #10
  %249 = ptrtoint ptr %isdbt_sb_segment_count.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %isdbt_sb_segment_count.i, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.then169.if.end174_crit_edge, %if.end165.if.end174_crit_edge, %if.end165.thread
  %250 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %config, align 4
  %demod_address176 = getelementptr inbounds %struct.mb86a20s_config, ptr %251, i32 0, i32 1
  %252 = ptrtoint ptr %demod_address176 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %demod_address176, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i410)
  %254 = ptrtoint ptr %reg.addr.i410 to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 7, ptr %reg.addr.i410, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i411) #8
  %255 = ptrtoint ptr %val.i411 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 -1, ptr %val.i411, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i412) #8
  %256 = getelementptr inbounds i8, ptr %msg.i412, i32 4
  %257 = call ptr @memset(ptr %256, i32 255, i32 16)
  %conv.i413 = zext i8 %253 to i16
  %258 = ptrtoint ptr %msg.i412 to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 %conv.i413, ptr %msg.i412, align 4
  %flags.i414 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 0, i32 1
  %259 = ptrtoint ptr %flags.i414 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 0, ptr %flags.i414, align 2
  %260 = ptrtoint ptr %256 to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 1, ptr %256, align 4
  %buf.i416 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 0, i32 3
  %261 = ptrtoint ptr %buf.i416 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %reg.addr.i410, ptr %buf.i416, align 4
  %arrayinit.element.i417 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 1
  %262 = ptrtoint ptr %arrayinit.element.i417 to i32
  call void @__asan_store2_noabort(i32 %262)
  store i16 %conv.i413, ptr %arrayinit.element.i417, align 4
  %flags3.i418 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 1, i32 1
  %263 = ptrtoint ptr %flags3.i418 to i32
  call void @__asan_store2_noabort(i32 %263)
  store i16 1, ptr %flags3.i418, align 2
  %len4.i419 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 1, i32 2
  %264 = ptrtoint ptr %len4.i419 to i32
  call void @__asan_store2_noabort(i32 %264)
  store i16 1, ptr %len4.i419, align 4
  %buf5.i420 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i412, i32 1, i32 3
  %265 = ptrtoint ptr %buf5.i420 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %val.i411, ptr %buf5.i420, align 4
  %266 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %1, align 4
  %call.i421 = call i32 @i2c_transfer(ptr noundef %267, ptr noundef nonnull %msg.i412, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i421)
  %cmp.not.i422 = icmp eq i32 %call.i421, 2
  br i1 %cmp.not.i422, label %mb86a20s_i2c_readreg.exit431, label %do.end.i427

do.end.i427:                                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %dev.i423 = getelementptr inbounds %struct.i2c_adapter, ptr %269, i32 0, i32 9
  %270 = ptrtoint ptr %reg.addr.i410 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %reg.addr.i410, align 1
  %conv8.i424 = zext i8 %271 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i423, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i424, i32 noundef %call.i421) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i421)
  %cmp9.i425 = icmp slt i32 %call.i421, 0
  %spec.select469 = select i1 %cmp9.i425, i32 %call.i421, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i412) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i411) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i410)
  br label %cleanup

mb86a20s_i2c_readreg.exit431:                     ; preds = %if.end174
  %272 = ptrtoint ptr %val.i411 to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %val.i411, align 1
  %conv11.i428 = zext i8 %273 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i412) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i411) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i410)
  %274 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 2, ptr %transmission_mode.i, align 4
  %and182 = and i32 %conv11.i428, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and182)
  %cmp183 = icmp eq i32 %and182, 32
  br i1 %cmp183, label %if.then185, label %mb86a20s_i2c_readreg.exit431.if.end190_crit_edge

mb86a20s_i2c_readreg.exit431.if.end190_crit_edge: ; preds = %mb86a20s_i2c_readreg.exit431
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

if.then185:                                       ; preds = %mb86a20s_i2c_readreg.exit431
  %275 = lshr i32 %conv11.i428, 2
  %and186 = and i32 %275, 3
  %276 = zext i32 %and186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %276, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %and186, label %if.then185.if.end190_crit_edge [
    i32 1, label %if.then185.if.end190.sink.split_crit_edge
    i32 2, label %sw.bb188
  ]

if.then185.if.end190.sink.split_crit_edge:        ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190.sink.split

if.then185.if.end190_crit_edge:                   ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190

sw.bb188:                                         ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end190.sink.split

if.end190.sink.split:                             ; preds = %sw.bb188, %if.then185.if.end190.sink.split_crit_edge
  %.sink481 = phi i32 [ 1, %sw.bb188 ], [ 3, %if.then185.if.end190.sink.split_crit_edge ]
  %277 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_store4_noabort(i32 %277)
  store i32 %.sink481, ptr %transmission_mode.i, align 4
  br label %if.end190

if.end190:                                        ; preds = %if.end190.sink.split, %if.then185.if.end190_crit_edge, %mb86a20s_i2c_readreg.exit431.if.end190_crit_edge
  %278 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 4, ptr %guard_interval.i, align 4
  %and191 = and i32 %conv11.i428, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.then193, label %if.end190.cleanup_crit_edge

if.end190.cleanup_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then193:                                       ; preds = %if.end190
  %and194 = and i32 %conv11.i428, 3
  %279 = zext i32 %and194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %and194, label %if.then193.cleanup_crit_edge [
    i32 0, label %sw.bb195
    i32 1, label %sw.bb197
    i32 2, label %sw.bb199
  ]

if.then193.cleanup_crit_edge:                     ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb195:                                         ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  %280 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 3, ptr %guard_interval.i, align 4
  br label %cleanup

sw.bb197:                                         ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  %281 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 2, ptr %guard_interval.i, align 4
  br label %cleanup

sw.bb199:                                         ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #10
  %282 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1, ptr %guard_interval.i, align 4
  br label %cleanup

noperlayer_error:                                 ; preds = %do.end.i27.i, %mb86a20s_i2c_writereg.exit.i379.noperlayer_error_crit_edge, %do.end.i30.i, %mb86a20s_i2c_writereg.exit.i344.noperlayer_error_crit_edge, %do.end.i29.i, %mb86a20s_i2c_writereg.exit.i.noperlayer_error_crit_edge, %do.end32.noperlayer_error_crit_edge
  %rc.0 = phi i32 [ %spec.select466, %do.end.i29.i ], [ %spec.select467, %do.end.i30.i ], [ %spec.select468, %do.end.i27.i ], [ %call33, %do.end32.noperlayer_error_crit_edge ], [ %call.i.i, %mb86a20s_i2c_writereg.exit.i.noperlayer_error_crit_edge ], [ %call.i.i337, %mb86a20s_i2c_writereg.exit.i344.noperlayer_error_crit_edge ], [ %call.i.i372, %mb86a20s_i2c_writereg.exit.i379.noperlayer_error_crit_edge ]
  %283 = ptrtoint ptr %isdbt_layer_enabled.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 0, ptr %isdbt_layer_enabled.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %noperlayer_error, %sw.bb199, %sw.bb197, %sw.bb195, %if.then193.cleanup_crit_edge, %if.end190.cleanup_crit_edge, %do.end.i427, %mb86a20s_i2c_writereg.exit409.cleanup_crit_edge, %do.end.i321, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %noperlayer_error ], [ %call.i, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ], [ %call.i404, %mb86a20s_i2c_writereg.exit409.cleanup_crit_edge ], [ 0, %sw.bb195 ], [ 0, %sw.bb197 ], [ 0, %sw.bb199 ], [ 0, %if.then193.cleanup_crit_edge ], [ 0, %if.end190.cleanup_crit_edge ], [ %spec.select, %do.end.i321 ], [ %spec.select469, %do.end.i427 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_stats(ptr noundef %fe, i32 noundef %status_nr) unnamed_addr #0 align 64 {
entry:
  %bit_error = alloca i32, align 4
  %bit_count = alloca i32, align 4
  %block_error = alloca i32, align 4
  %block_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit_error) #8
  %2 = ptrtoint ptr %bit_error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bit_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit_count) #8
  %3 = ptrtoint ptr %bit_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bit_count, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_error) #8
  %4 = ptrtoint ptr %block_error to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %block_error, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %block_count) #8
  %5 = ptrtoint ptr %block_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %block_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_stats.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_stats, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_stats.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call fastcc void @mb86a20s_get_main_CNR(ptr noundef %fe)
  tail call fastcc void @mb86a20s_get_blk_error_layer_CNR(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %status_nr)
  %cmp = icmp slt i32 %status_nr, 9
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %isdbt_layer_enabled = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %per_layers.0447 = phi i32 [ 0, %for.cond.preheader ], [ %per_layers.2, %for.inc.for.body_crit_edge ]
  %post_ber_layers.0446 = phi i32 [ 0, %for.cond.preheader ], [ %post_ber_layers.2, %for.inc.for.body_crit_edge ]
  %pre_ber_layers.0445 = phi i32 [ 0, %for.cond.preheader ], [ %pre_ber_layers.2, %for.inc.for.body_crit_edge ]
  %t_block_count.0443 = phi i32 [ 0, %for.cond.preheader ], [ %t_block_count.1, %for.inc.for.body_crit_edge ]
  %t_block_error.0442 = phi i32 [ 0, %for.cond.preheader ], [ %t_block_error.1, %for.inc.for.body_crit_edge ]
  %t_post_bit_count.0441 = phi i32 [ 0, %for.cond.preheader ], [ %t_post_bit_count.1, %for.inc.for.body_crit_edge ]
  %t_post_bit_error.0440 = phi i32 [ 0, %for.cond.preheader ], [ %t_post_bit_error.1, %for.inc.for.body_crit_edge ]
  %t_pre_bit_count.0439 = phi i32 [ 0, %for.cond.preheader ], [ %t_pre_bit_count.1, %for.inc.for.body_crit_edge ]
  %t_pre_bit_error.0438 = phi i32 [ 0, %for.cond.preheader ], [ %t_pre_bit_error.1, %for.inc.for.body_crit_edge ]
  %layer.0434 = phi i32 [ 0, %for.cond.preheader ], [ %inc221.pre-phi, %for.inc.for.body_crit_edge ]
  %rc.0433 = phi i32 [ 0, %for.cond.preheader ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %isdbt_layer_enabled, align 4
  %conv = zext i8 %9 to i32
  %shl = shl nuw nsw i32 1, %layer.0434
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = add nuw nsw i32 %layer.0434, 1
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %call10 = call fastcc i32 @mb86a20s_get_pre_ber(ptr noundef %fe, i32 noundef %layer.0434, ptr noundef nonnull %bit_error, ptr noundef nonnull %bit_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, -1
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %layer.0434, 1
  %arrayidx = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 %add
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %bit_error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bit_error, align 4
  %conv14 = zext i32 %12 to i64
  %13 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 %add, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %13, align 1
  %add19 = add i64 %15, %conv14
  store i64 %add19, ptr %13, align 1
  %arrayidx22 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 %add
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %arrayidx22, align 1
  %17 = ptrtoint ptr %bit_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bit_count, align 4
  %conv24 = zext i32 %18 to i64
  %19 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 %add, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %21 = load i64, ptr %19, align 1
  %add29 = add i64 %21, %conv24
  store i64 %add29, ptr %19, align 1
  br label %if.end50

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call10)
  %cmp30.not = icmp eq i32 %call10, -16
  %.pre449 = add nuw nsw i32 %layer.0434, 1
  br i1 %cmp30.not, label %if.else.if.end50_crit_edge, label %if.then32

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx36 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 %.pre449
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx36, align 1
  %arrayidx41 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 %.pre449
  %23 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx41, align 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %dev47 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 9
  %add48 = add nuw nsw i32 %layer.0434, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %add48, i32 noundef %call10) #12
  br label %if.end50

if.end50:                                         ; preds = %if.then32, %if.else.if.end50_crit_edge, %if.then13
  %add53.pre-phi = phi i32 [ %.pre449, %if.then32 ], [ %add, %if.then13 ], [ %.pre449, %if.else.if.end50_crit_edge ]
  %arrayidx54 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 %add53.pre-phi
  %26 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp57.not = icmp ne i8 %27, 0
  %inc60 = zext i1 %cmp57.not to i32
  %spec.select = add i32 %pre_ber_layers.0445, %inc60
  %call62 = call fastcc i32 @mb86a20s_get_post_ber(ptr noundef %fe, i32 noundef %layer.0434, ptr noundef nonnull %bit_error, ptr noundef nonnull %bit_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call62)
  %cmp63 = icmp sgt i32 %call62, -1
  br i1 %cmp63, label %if.then65, label %if.else86

if.then65:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx68 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 %add53.pre-phi
  %28 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %arrayidx68, align 1
  %29 = ptrtoint ptr %bit_error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bit_error, align 4
  %conv70 = zext i32 %30 to i64
  %31 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 %add53.pre-phi, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %31, align 1
  %add75 = add i64 %33, %conv70
  store i64 %add75, ptr %31, align 1
  %arrayidx78 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 %add53.pre-phi
  %34 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %arrayidx78, align 1
  %35 = ptrtoint ptr %bit_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bit_count, align 4
  %conv80 = zext i32 %36 to i64
  %37 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 %add53.pre-phi, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %37, align 1
  %add85 = add i64 %39, %conv80
  store i64 %add85, ptr %37, align 1
  br label %if.end107

if.else86:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call62)
  %cmp87.not = icmp eq i32 %call62, -16
  br i1 %cmp87.not, label %if.else86.if.end107_crit_edge, label %if.then89

if.else86.if.end107_crit_edge:                    ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then89:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx93 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 %add53.pre-phi
  %40 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx93, align 1
  %arrayidx98 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 %add53.pre-phi
  %41 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx98, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %dev104 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 9
  %add105 = add nuw nsw i32 %layer.0434, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev104, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %add105, i32 noundef %call62) #12
  br label %if.end107

if.end107:                                        ; preds = %if.then89, %if.else86.if.end107_crit_edge, %if.then65
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp114.not = icmp ne i8 %45, 0
  %inc117 = zext i1 %cmp114.not to i32
  %spec.select430 = add i32 %post_ber_layers.0446, %inc117
  %call119 = call fastcc i32 @mb86a20s_get_blk_error(ptr noundef %fe, i32 noundef %layer.0434, ptr noundef nonnull %block_error, ptr noundef nonnull %block_count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call119)
  %cmp120 = icmp sgt i32 %call119, -1
  br i1 %cmp120, label %if.then122, label %if.else145

if.then122:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %arrayidx54, align 1
  %47 = ptrtoint ptr %block_error to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %block_error, align 4
  %conv128 = zext i32 %48 to i64
  %49 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 %add53.pre-phi, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %49, align 1
  %add133 = add i64 %51, %conv128
  store i64 %add133, ptr %49, align 1
  %arrayidx137 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 %add53.pre-phi
  %52 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %arrayidx137, align 1
  %53 = ptrtoint ptr %block_count to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %block_count, align 4
  %conv139 = zext i32 %54 to i64
  %55 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 %add53.pre-phi, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %55, align 1
  %add144 = add i64 %57, %conv139
  store i64 %add144, ptr %55, align 1
  br label %if.end166

if.else145:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call119)
  %cmp146.not = icmp eq i32 %call119, -16
  br i1 %cmp146.not, label %if.else145.if.end166_crit_edge, label %if.then148

if.else145.if.end166_crit_edge:                   ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end166

if.then148:                                       ; preds = %if.else145
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx54, align 1
  %arrayidx157 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 %add53.pre-phi
  %59 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %arrayidx157, align 1
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 4
  %dev163 = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 9
  %add164 = add nuw nsw i32 %layer.0434, 65
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev163, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48, i32 noundef %add164, i32 noundef %call119) #12
  br label %if.end166

if.end166:                                        ; preds = %if.then148, %if.else145.if.end166_crit_edge, %if.then122
  %62 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp173.not = icmp ne i8 %63, 0
  %inc176 = zext i1 %cmp173.not to i32
  %spec.select431 = add i32 %per_layers.0447, %inc176
  %64 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 %add53.pre-phi, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 8)
  %66 = load i64, ptr %64, align 1
  %67 = trunc i64 %66 to i32
  %conv184 = add i32 %t_pre_bit_error.0438, %67
  %68 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 %add53.pre-phi, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %70 = load i64, ptr %68, align 1
  %71 = trunc i64 %70 to i32
  %conv191 = add i32 %t_pre_bit_count.0439, %71
  %72 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 %add53.pre-phi, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %74 = load i64, ptr %72, align 1
  %75 = trunc i64 %74 to i32
  %conv198 = add i32 %t_post_bit_error.0440, %75
  %76 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 %add53.pre-phi, i32 1
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %78 = load i64, ptr %76, align 1
  %79 = trunc i64 %78 to i32
  %conv205 = add i32 %t_post_bit_count.0441, %79
  %80 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 %add53.pre-phi, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 8)
  %82 = load i64, ptr %80, align 1
  %83 = trunc i64 %82 to i32
  %conv212 = add i32 %t_block_error.0442, %83
  %84 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 %add53.pre-phi, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 8)
  %86 = load i64, ptr %84, align 1
  %87 = trunc i64 %86 to i32
  %conv219 = add i32 %t_block_count.0443, %87
  br label %for.inc

for.inc:                                          ; preds = %if.end166, %for.body.for.inc_crit_edge
  %inc221.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add53.pre-phi, %if.end166 ]
  %rc.1 = phi i32 [ %rc.0433, %for.body.for.inc_crit_edge ], [ %call119, %if.end166 ]
  %t_pre_bit_error.1 = phi i32 [ %t_pre_bit_error.0438, %for.body.for.inc_crit_edge ], [ %conv184, %if.end166 ]
  %t_pre_bit_count.1 = phi i32 [ %t_pre_bit_count.0439, %for.body.for.inc_crit_edge ], [ %conv191, %if.end166 ]
  %t_post_bit_error.1 = phi i32 [ %t_post_bit_error.0440, %for.body.for.inc_crit_edge ], [ %conv198, %if.end166 ]
  %t_post_bit_count.1 = phi i32 [ %t_post_bit_count.0441, %for.body.for.inc_crit_edge ], [ %conv205, %if.end166 ]
  %t_block_error.1 = phi i32 [ %t_block_error.0442, %for.body.for.inc_crit_edge ], [ %conv212, %if.end166 ]
  %t_block_count.1 = phi i32 [ %t_block_count.0443, %for.body.for.inc_crit_edge ], [ %conv219, %if.end166 ]
  %pre_ber_layers.2 = phi i32 [ %pre_ber_layers.0445, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end166 ]
  %post_ber_layers.2 = phi i32 [ %post_ber_layers.0446, %for.body.for.inc_crit_edge ], [ %spec.select430, %if.end166 ]
  %per_layers.2 = phi i32 [ %per_layers.0447, %for.body.for.inc_crit_edge ], [ %spec.select431, %if.end166 ]
  %exitcond.not = icmp eq i32 %inc221.pre-phi, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pre_ber_layers.2)
  %tobool222.not = icmp eq i32 %pre_ber_layers.2, 0
  br i1 %tobool222.not, label %for.end.if.end249_crit_edge, label %if.then223

for.end.if.end249_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end249

if.then223:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv228 = zext i32 %t_pre_bit_error.1 to i64
  %88 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %conv228, ptr %88, align 1
  %conv236 = zext i32 %t_pre_bit_count.1 to i64
  %90 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 8)
  store i64 %conv236, ptr %90, align 1
  br label %if.end249

if.end249:                                        ; preds = %if.then223, %for.end.if.end249_crit_edge
  %.sink = phi i8 [ 3, %if.then223 ], [ 0, %for.end.if.end249_crit_edge ]
  %92 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 44, i32 1
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %.sink, ptr %92, align 1
  %94 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 45, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 3, ptr %94, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %post_ber_layers.2)
  %tobool250.not = icmp eq i32 %post_ber_layers.2, 0
  br i1 %tobool250.not, label %if.end249.if.end277_crit_edge, label %if.then251

if.end249.if.end277_crit_edge:                    ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end277

if.then251:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #10
  %conv256 = zext i32 %t_post_bit_error.1 to i64
  %96 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_storeN_noabort(i32 %97, i32 8)
  store i64 %conv256, ptr %96, align 1
  %conv264 = zext i32 %t_post_bit_count.1 to i64
  %98 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %conv264, ptr %98, align 1
  br label %if.end277

if.end277:                                        ; preds = %if.then251, %if.end249.if.end277_crit_edge
  %.sink448 = phi i8 [ 3, %if.then251 ], [ 0, %if.end249.if.end277_crit_edge ]
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %.sink448, ptr %100, align 1
  %102 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 47, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 3, ptr %102, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %per_layers.2)
  %tobool278.not = icmp eq i32 %per_layers.2, 0
  %stat298 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1
  br i1 %tobool278.not, label %if.else296, label %if.then279

if.then279:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %104 = ptrtoint ptr %stat298 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 3, ptr %stat298, align 1
  %conv284 = zext i32 %t_block_error.1 to i64
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 48, i32 1, i32 0, i32 1
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_storeN_noabort(i32 %106, i32 8)
  store i64 %conv284, ptr %105, align 1
  %stat289 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %107 = ptrtoint ptr %stat289 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 3, ptr %stat289, align 1
  %conv292 = zext i32 %t_block_count.1 to i64
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_storeN_noabort(i32 %109, i32 8)
  store i64 %conv292, ptr %108, align 1
  br label %cleanup

if.else296:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %110 = ptrtoint ptr %stat298 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %stat298, align 1
  %stat302 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 49, i32 1
  %111 = ptrtoint ptr %stat302 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %stat302, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else296, %if.then279, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %rc.1, %if.else296 ], [ %rc.1, %if.then279 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_count) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %block_error) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit_count) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit_error) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_segment_count(ptr nocapture noundef readonly %state, i32 noundef %layer) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i49 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_segment_count.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_segment_count, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_segment_count.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.46) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layer)
  %cmp = icmp ugt i32 %layer, 2
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %demod_address, align 4
  %arrayidx = getelementptr [3 x i8], ptr @mb86a20s_get_segment_count.reg, i32 0, i32 %layer
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 109, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %7, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %conv.i = zext i8 %5 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end8

mb86a20s_i2c_writereg.exit:                       ; preds = %if.end4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  %conv5.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef 109, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end8_crit_edge

mb86a20s_i2c_writereg.exit.if.end8_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %mb86a20s_i2c_writereg.exit.if.end8_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config, align 4
  %demod_address10 = getelementptr inbounds %struct.mb86a20s_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %demod_address10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %demod_address10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 110, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i49) #8
  %26 = getelementptr inbounds i8, ptr %msg.i49, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %conv.i50 = zext i8 %23 to i16
  %28 = ptrtoint ptr %msg.i49 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i50, ptr %msg.i49, align 4
  %flags.i51 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i51 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i51, align 2
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %26, align 4
  %buf.i53 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reg.addr.i, ptr %buf.i53, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1
  %32 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i50, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1, i32 1
  %33 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1, i32 2
  %34 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i49, i32 1, i32 3
  %35 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %val.i, ptr %buf5.i, align 4
  %36 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state, align 4
  %call.i54 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i49, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i54)
  %cmp.not.i55 = icmp eq i32 %call.i54, 2
  br i1 %cmp.not.i55, label %mb86a20s_i2c_readreg.exit, label %do.end.i57

do.end.i57:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state, align 4
  %dev.i56 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i56, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp9.i = icmp slt i32 %call.i54, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i54, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i49) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i49) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %44 = lshr i8 %43, 4
  %45 = zext i8 %44 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_segment_count.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_segment_count, %if.then27)) #8
          to label %cleanup [label %if.then27], !srcloc !240

if.then27:                                        ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state, align 4
  %dev29 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_segment_count.__UNIQUE_ID_ddebug293, ptr noundef %dev29, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %45) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %mb86a20s_i2c_readreg.exit, %do.end.i57, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call.i, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ], [ %45, %if.then27 ], [ %spec.select, %do.end.i57 ], [ %45, %mb86a20s_i2c_readreg.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb86a20s_get_main_CNR(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i63 = alloca [2 x i8], align 1
  %msg.i64 = alloca %struct.i2c_msg, align 4
  %buf.i53 = alloca [2 x i8], align 1
  %msg.i54 = alloca %struct.i2c_msg, align 4
  %reg.addr.i27 = alloca i8, align 1
  %val.i28 = alloca i8, align 1
  %msg.i29 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i5 = alloca i8, align 1
  %val.i6 = alloca i8, align 1
  %msg.i7 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %6 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 69, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %conv.i = zext i8 %5 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %8, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val.i, ptr %buf5.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %mb86a20s_i2c_readreg.exit, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %entry
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %26 = and i8 %25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  br i1 %tobool.not, label %do.body, label %if.end8

do.body:                                          ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_main_CNR, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !240

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55) #8
  br label %cleanup

if.end8:                                          ; preds = %mb86a20s_i2c_readreg.exit
  %29 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config, align 4
  %demod_address10 = getelementptr inbounds %struct.mb86a20s_config, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %demod_address10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %demod_address10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i5)
  %33 = ptrtoint ptr %reg.addr.i5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 70, ptr %reg.addr.i5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i6) #8
  %34 = ptrtoint ptr %val.i6 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %val.i6, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i7) #8
  %35 = getelementptr inbounds i8, ptr %msg.i7, i32 4
  %36 = call ptr @memset(ptr %35, i32 255, i32 16)
  %conv.i8 = zext i8 %32 to i16
  %37 = ptrtoint ptr %msg.i7 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i8, ptr %msg.i7, align 4
  %flags.i9 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i9 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i9, align 2
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %35, align 4
  %buf.i11 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 3
  %40 = ptrtoint ptr %buf.i11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %reg.addr.i5, ptr %buf.i11, align 4
  %arrayinit.element.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1
  %41 = ptrtoint ptr %arrayinit.element.i12 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i8, ptr %arrayinit.element.i12, align 4
  %flags3.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1, i32 1
  %42 = ptrtoint ptr %flags3.i13 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags3.i13, align 2
  %len4.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1, i32 2
  %43 = ptrtoint ptr %len4.i14 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 1, ptr %len4.i14, align 4
  %buf5.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 1, i32 3
  %44 = ptrtoint ptr %buf5.i15 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %val.i6, ptr %buf5.i15, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %call.i16 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i7, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 2
  br i1 %cmp.not.i17, label %mb86a20s_i2c_readreg.exit26, label %do.end.i22

do.end.i22:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %dev.i18 = getelementptr inbounds %struct.i2c_adapter, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %reg.addr.i5 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %reg.addr.i5, align 1
  %conv8.i19 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i18, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i19, i32 noundef %call.i16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i5)
  br label %cleanup

mb86a20s_i2c_readreg.exit26:                      ; preds = %if.end8
  %51 = ptrtoint ptr %val.i6 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %val.i6, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i7) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i5)
  %53 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config, align 4
  %demod_address16 = getelementptr inbounds %struct.mb86a20s_config, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %demod_address16 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %demod_address16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i27)
  %57 = ptrtoint ptr %reg.addr.i27 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 70, ptr %reg.addr.i27, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i28) #8
  %58 = ptrtoint ptr %val.i28 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -1, ptr %val.i28, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i29) #8
  %59 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %60 = call ptr @memset(ptr %59, i32 255, i32 16)
  %conv.i30 = zext i8 %56 to i16
  %61 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i30, ptr %msg.i29, align 4
  %flags.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i31 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i31, align 2
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 1, ptr %59, align 4
  %buf.i33 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %64 = ptrtoint ptr %buf.i33 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %reg.addr.i27, ptr %buf.i33, align 4
  %arrayinit.element.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1
  %65 = ptrtoint ptr %arrayinit.element.i34 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i30, ptr %arrayinit.element.i34, align 4
  %flags3.i35 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 1
  %66 = ptrtoint ptr %flags3.i35 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags3.i35, align 2
  %len4.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 2
  %67 = ptrtoint ptr %len4.i36 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %len4.i36, align 4
  %buf5.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 1, i32 3
  %68 = ptrtoint ptr %buf5.i37 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %val.i28, ptr %buf5.i37, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %call.i38 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i29, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i38)
  %cmp.not.i39 = icmp eq i32 %call.i38, 2
  br i1 %cmp.not.i39, label %mb86a20s_i2c_readreg.exit48, label %do.end.i44

do.end.i44:                                       ; preds = %mb86a20s_i2c_readreg.exit26
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %dev.i40 = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %reg.addr.i27 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %reg.addr.i27, align 1
  %conv8.i41 = zext i8 %74 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i40, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i41, i32 noundef %call.i38) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i28) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i27)
  br label %cleanup

mb86a20s_i2c_readreg.exit48:                      ; preds = %mb86a20s_i2c_readreg.exit26
  %conv11.i23 = zext i8 %52 to i32
  %75 = ptrtoint ptr %val.i28 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %val.i28, align 1
  %conv11.i45 = zext i8 %76 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i29) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i28) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i27)
  %shl = shl nuw nsw i32 %conv11.i23, 8
  %or = or i32 %shl, %conv11.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 19648, i32 %or)
  %cmp.not.i49 = icmp ult i32 %or, 19648
  br i1 %cmp.not.i49, label %if.end.i50, label %mb86a20s_i2c_readreg.exit48.interpolate_value.exit_crit_edge

mb86a20s_i2c_readreg.exit48.interpolate_value.exit_crit_edge: ; preds = %mb86a20s_i2c_readreg.exit48
  call void @__sanitizer_cov_trace_pc() #10
  br label %interpolate_value.exit

if.end.i50:                                       ; preds = %mb86a20s_i2c_readreg.exit48
  call void @__sanitizer_cov_trace_const_cmp4(i32 788, i32 %or)
  %cmp4.i = icmp ult i32 %or, 788
  br i1 %cmp4.i, label %if.end.i50.interpolate_value.exit_crit_edge, label %if.end.i50.for.body.i_crit_edge

if.end.i50.for.body.i_crit_edge:                  ; preds = %if.end.i50
  br label %for.body.i

if.end.i50.interpolate_value.exit_crit_edge:      ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #10
  br label %interpolate_value.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i50.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end.i50.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %i.029.i
  %77 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %or)
  %cmp14.i = icmp eq i32 %78, %or
  br i1 %cmp14.i, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %y17.i = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %i.029.i, i32 1
  %79 = ptrtoint ptr %y17.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %y17.i, align 4
  br label %interpolate_value.exit

if.end18.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %or)
  %cmp21.i = icmp ult i32 %78, %or
  br i1 %cmp21.i, label %if.end18.i.for.end.i_crit_edge, label %for.inc.i

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end18.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end18.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.029.i, %if.end18.i.for.end.i_crit_edge ], [ 30, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %i.0.lcssa.i
  %y25.i = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %i.0.lcssa.i, i32 1
  %81 = ptrtoint ptr %y25.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %y25.i, align 4
  %sub26.i = add nsw i32 %i.0.lcssa.i, -1
  %arrayidx27.i = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %sub26.i
  %y28.i = getelementptr %struct.linear_segments, ptr @cnr_to_db_table, i32 %sub26.i, i32 1
  %83 = ptrtoint ptr %y28.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %y28.i, align 4
  %sub29.i = sub i32 %82, %84
  %85 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx27.i, align 4
  %87 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx24.i, align 4
  %sub35.i = sub i32 %86, %88
  %sub38.i = sub i32 %or, %88
  %conv.i51 = zext i32 %sub38.i to i64
  %conv39.i = zext i32 %sub29.i to i64
  %mul.i = mul nuw i64 %conv.i51, %conv39.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp210.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp210.i, label %if.then214.i, label %if.else220.i, !prof !243

if.then214.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv215.i = trunc i64 %mul.i to i32
  %div218.i = udiv i32 %conv215.i, %sub35.i
  br label %if.end224.i

if.else220.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub35.i, i64 %mul.i) #13, !srcloc !244
  %asmresult1.i.i = extractvalue { i64, i64 } %89, 1
  %extract.t26.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.else220.i, %if.then214.i
  %tmp64.0.off0.i = phi i32 [ %div218.i, %if.then214.i ], [ %extract.t26.i, %if.else220.i ]
  %conv230.i = sub i32 %82, %tmp64.0.off0.i
  br label %interpolate_value.exit

interpolate_value.exit:                           ; preds = %if.end224.i, %if.then15.i, %if.end.i50.interpolate_value.exit_crit_edge, %mb86a20s_i2c_readreg.exit48.interpolate_value.exit_crit_edge
  %retval.0.i52 = phi i32 [ %80, %if.then15.i ], [ %conv230.i, %if.end224.i ], [ 0, %mb86a20s_i2c_readreg.exit48.interpolate_value.exit_crit_edge ], [ 30000, %if.end.i50.interpolate_value.exit_crit_edge ]
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %90 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %stat, align 1
  %conv = zext i32 %retval.0.i52 to i64
  %91 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 8)
  store i64 %conv, ptr %91, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_main_CNR, %if.then38)) #8
          to label %do.end43 [label %if.then38], !srcloc !240

if.then38:                                        ; preds = %interpolate_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %dev40 = getelementptr inbounds %struct.i2c_adapter, ptr %94, i32 0, i32 9
  %retval.0.i52.frozen = freeze i32 %retval.0.i52
  %div = udiv i32 %retval.0.i52.frozen, 1000
  %95 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %retval.0.i52.frozen, %95
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug318, ptr noundef %dev40, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %or) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %interpolate_value.exit
  %96 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %config, align 4
  %demod_address45 = getelementptr inbounds %struct.mb86a20s_config, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %demod_address45 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %demod_address45, align 4
  %conv47 = or i8 %25, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #8
  %100 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %101 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 69, ptr %buf.i53, align 1
  %102 = ptrtoint ptr %100 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv47, ptr %100, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54) #8
  %103 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 196607, ptr %103, align 4
  %conv.i55 = zext i8 %99 to i16
  %105 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i55, ptr %msg.i54, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %106 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i56, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %107 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i53, ptr %buf1.i, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i58 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i54, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp.not.i59 = icmp eq i32 %call.i58, 1
  br i1 %cmp.not.i59, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #8
  br label %if.end52

mb86a20s_i2c_writereg.exit:                       ; preds = %do.end43
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %dev.i60 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 9
  %conv5.i = zext i8 %conv47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i58, i32 noundef 69, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp49 = icmp slt i32 %call.i58, 0
  br i1 %cmp49, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end52_crit_edge

mb86a20s_i2c_writereg.exit.if.end52_crit_edge:    ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %mb86a20s_i2c_writereg.exit.if.end52_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %112 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config, align 4
  %demod_address54 = getelementptr inbounds %struct.mb86a20s_config, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %demod_address54 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %demod_address54, align 4
  %conv56 = and i8 %25, 111
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i63) #8
  %116 = getelementptr inbounds [2 x i8], ptr %buf.i63, i32 0, i32 1
  %117 = ptrtoint ptr %buf.i63 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 69, ptr %buf.i63, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv56, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i64) #8
  %119 = getelementptr inbounds i8, ptr %msg.i64, i32 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 196607, ptr %119, align 4
  %conv.i65 = zext i8 %115 to i16
  %121 = ptrtoint ptr %msg.i64 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %conv.i65, ptr %msg.i64, align 4
  %flags.i66 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 1
  %122 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %flags.i66, align 2
  %buf1.i68 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i64, i32 0, i32 3
  %123 = ptrtoint ptr %buf1.i68 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %buf.i63, ptr %buf1.i68, align 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %1, align 4
  %call.i69 = call i32 @i2c_transfer(ptr noundef %125, ptr noundef nonnull %msg.i64, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i69)
  %cmp.not.i70 = icmp eq i32 %call.i69, 1
  br i1 %cmp.not.i70, label %if.end52.mb86a20s_i2c_writereg.exit75_crit_edge, label %do.end.i73

if.end52.mb86a20s_i2c_writereg.exit75_crit_edge:  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %mb86a20s_i2c_writereg.exit75

do.end.i73:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %dev.i71 = getelementptr inbounds %struct.i2c_adapter, ptr %127, i32 0, i32 9
  %conv5.i72 = zext i8 %conv56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i71, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i69, i32 noundef 69, i32 noundef %conv5.i72) #12
  br label %mb86a20s_i2c_writereg.exit75

mb86a20s_i2c_writereg.exit75:                     ; preds = %do.end.i73, %if.end52.mb86a20s_i2c_writereg.exit75_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i64) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i63) #8
  br label %cleanup

cleanup:                                          ; preds = %mb86a20s_i2c_writereg.exit75, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %do.end.i44, %do.end.i22, %if.then6, %do.body, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb86a20s_get_blk_error_layer_CNR(ptr nocapture noundef %fe) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i138 = alloca i8, align 1
  %val.i139 = alloca i8, align 1
  %msg.i140 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i126 = alloca [2 x i8], align 1
  %msg.i127 = alloca %struct.i2c_msg, align 4
  %reg.addr.i100 = alloca i8, align 1
  %val.i101 = alloca i8, align 1
  %msg.i102 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i87 = alloca [2 x i8], align 1
  %msg.i88 = alloca %struct.i2c_msg, align 4
  %reg.addr.i65 = alloca i8, align 1
  %val.i66 = alloca i8, align 1
  %msg.i67 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %reg.addr.i30 = alloca i8, align 1
  %val.i31 = alloca i8, align 1
  %msg.i32 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i18 = alloca [2 x i8], align 1
  %msg.i19 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i8 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error_layer_CNR, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.58) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 80, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 91, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %conv.i = zext i8 %7 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end5

mb86a20s_i2c_writereg.exit:                       ; preds = %do.end
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef 80, i32 noundef 91) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end5_crit_edge

mb86a20s_i2c_writereg.exit.if.end5_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %mb86a20s_i2c_writereg.exit.if.end5_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config, align 4
  %demod_address7 = getelementptr inbounds %struct.mb86a20s_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %demod_address7 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %demod_address7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 81, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i8) #8
  %26 = getelementptr inbounds i8, ptr %msg.i8, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %conv.i9 = zext i8 %23 to i16
  %28 = ptrtoint ptr %msg.i8 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i9, ptr %msg.i8, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i10, align 2
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %26, align 4
  %buf.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i12 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reg.addr.i, ptr %buf.i12, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1
  %32 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i9, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 1
  %33 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 2
  %34 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i8, i32 1, i32 3
  %35 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %val.i, ptr %buf5.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i13 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i8, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i13)
  %cmp.not.i14 = icmp eq i32 %call.i13, 2
  br i1 %cmp.not.i14, label %mb86a20s_i2c_readreg.exit, label %do.end.i16

do.end.i16:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev.i15 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i15, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i13) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end5
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool12.not = icmp eq i8 %44, 0
  br i1 %tobool12.not, label %do.body14, label %for.cond.preheader

for.cond.preheader:                               ; preds = %mb86a20s_i2c_readreg.exit
  %isdbt_layer_enabled = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 22
  %45 = getelementptr inbounds [2 x i8], ptr %buf.i18, i32 0, i32 1
  %46 = getelementptr inbounds i8, ptr %msg.i19, i32 4
  %flags.i21 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 1
  %buf1.i23 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i19, i32 0, i32 3
  %47 = getelementptr inbounds i8, ptr %msg.i32, i32 4
  %flags.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 1
  %buf.i36 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 0, i32 3
  %arrayinit.element.i37 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1
  %flags3.i38 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 1
  %len4.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 2
  %buf5.i40 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i32, i32 1, i32 3
  %48 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %49 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %flags.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %buf1.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %50 = getelementptr inbounds i8, ptr %msg.i67, i32 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 0, i32 1
  %buf.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 0, i32 3
  %arrayinit.element.i72 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1
  %flags3.i73 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1, i32 1
  %len4.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1, i32 2
  %buf5.i75 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i67, i32 1, i32 3
  %51 = getelementptr inbounds [2 x i8], ptr %buf.i87, i32 0, i32 1
  %52 = getelementptr inbounds i8, ptr %msg.i88, i32 4
  %flags.i90 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 1
  %buf1.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i88, i32 0, i32 3
  %53 = getelementptr inbounds i8, ptr %msg.i102, i32 4
  %flags.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 1
  %buf.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 0, i32 3
  %arrayinit.element.i107 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1
  %flags3.i108 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1, i32 1
  %len4.i109 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1, i32 2
  %buf5.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i102, i32 1, i32 3
  br label %for.body

do.body14:                                        ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error_layer_CNR, %if.then26)) #8
          to label %cleanup [label %if.then26], !srcloc !240

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %dev28 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug320, ptr noundef %dev28, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %layer.0191 = phi i32 [ 0, %for.cond.preheader ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %56 = ptrtoint ptr %isdbt_layer_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %isdbt_layer_enabled, align 4
  %conv = zext i8 %57 to i32
  %shl = shl nuw nsw i32 1, %layer.0191
  %and34 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then36, label %if.end38

if.then36:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %layer.0191, 1
  %arrayidx = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 %add
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %arrayidx, align 1
  br label %for.inc

if.end38:                                         ; preds = %for.body
  %59 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config, align 4
  %demod_address40 = getelementptr inbounds %struct.mb86a20s_config, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %demod_address40 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %demod_address40, align 4
  %63 = trunc i32 %layer.0191 to i8
  %64 = mul i8 %63, 3
  %conv42 = add i8 %64, 82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i18) #8
  %65 = ptrtoint ptr %buf.i18 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 80, ptr %buf.i18, align 1
  %66 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv42, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i19) #8
  %67 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 196607, ptr %46, align 4
  %conv.i20 = zext i8 %62 to i16
  %68 = ptrtoint ptr %msg.i19 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i20, ptr %msg.i19, align 4
  %69 = ptrtoint ptr %flags.i21 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i21, align 2
  %70 = ptrtoint ptr %buf1.i23 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i18, ptr %buf1.i23, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call.i24 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i19, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i24)
  %cmp.not.i25 = icmp eq i32 %call.i24, 1
  br i1 %cmp.not.i25, label %mb86a20s_i2c_writereg.exit29.thread, label %mb86a20s_i2c_writereg.exit29

mb86a20s_i2c_writereg.exit29.thread:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #8
  br label %if.end47

mb86a20s_i2c_writereg.exit29:                     ; preds = %if.end38
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %dev.i26 = getelementptr inbounds %struct.i2c_adapter, ptr %74, i32 0, i32 9
  %conv5.i = zext i8 %conv42 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i26, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i24, i32 noundef 80, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i19) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp44 = icmp slt i32 %call.i24, 0
  br i1 %cmp44, label %mb86a20s_i2c_writereg.exit29.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit29.if.end47_crit_edge

mb86a20s_i2c_writereg.exit29.if.end47_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

mb86a20s_i2c_writereg.exit29.cleanup_crit_edge:   ; preds = %mb86a20s_i2c_writereg.exit29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end47:                                         ; preds = %mb86a20s_i2c_writereg.exit29.if.end47_crit_edge, %mb86a20s_i2c_writereg.exit29.thread
  %75 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %config, align 4
  %demod_address49 = getelementptr inbounds %struct.mb86a20s_config, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %demod_address49 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %demod_address49, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i30)
  %79 = ptrtoint ptr %reg.addr.i30 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 81, ptr %reg.addr.i30, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i31) #8
  %80 = ptrtoint ptr %val.i31 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 -1, ptr %val.i31, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i32) #8
  %81 = call ptr @memset(ptr %47, i32 255, i32 16)
  %conv.i33 = zext i8 %78 to i16
  %82 = ptrtoint ptr %msg.i32 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv.i33, ptr %msg.i32, align 4
  %83 = ptrtoint ptr %flags.i34 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %flags.i34, align 2
  %84 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 1, ptr %47, align 4
  %85 = ptrtoint ptr %buf.i36 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %reg.addr.i30, ptr %buf.i36, align 4
  %86 = ptrtoint ptr %arrayinit.element.i37 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i33, ptr %arrayinit.element.i37, align 4
  %87 = ptrtoint ptr %flags3.i38 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 1, ptr %flags3.i38, align 2
  %88 = ptrtoint ptr %len4.i39 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 1, ptr %len4.i39, align 4
  %89 = ptrtoint ptr %buf5.i40 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %val.i31, ptr %buf5.i40, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  %call.i41 = call i32 @i2c_transfer(ptr noundef %91, ptr noundef nonnull %msg.i32, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i41)
  %cmp.not.i42 = icmp eq i32 %call.i41, 2
  br i1 %cmp.not.i42, label %mb86a20s_i2c_readreg.exit51, label %do.end.i47

do.end.i47:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %dev.i43 = getelementptr inbounds %struct.i2c_adapter, ptr %93, i32 0, i32 9
  %94 = ptrtoint ptr %reg.addr.i30 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %reg.addr.i30, align 1
  %conv8.i44 = zext i8 %95 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i43, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i44, i32 noundef %call.i41) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i31) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i30)
  br label %cleanup

mb86a20s_i2c_readreg.exit51:                      ; preds = %if.end47
  %96 = ptrtoint ptr %val.i31 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %val.i31, align 1
  %conv11.i48 = zext i8 %97 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i31) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i30)
  %shl55 = shl nuw nsw i32 %conv11.i48, 16
  %98 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %config, align 4
  %demod_address57 = getelementptr inbounds %struct.mb86a20s_config, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %demod_address57 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %demod_address57, align 4
  %conv60 = add i8 %64, 83
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #8
  %102 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 80, ptr %buf.i52, align 1
  %103 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv60, ptr %48, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #8
  %104 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 196607, ptr %49, align 4
  %conv.i54 = zext i8 %101 to i16
  %105 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv.i54, ptr %msg.i53, align 4
  %106 = ptrtoint ptr %flags.i55 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %flags.i55, align 2
  %107 = ptrtoint ptr %buf1.i57 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %buf.i52, ptr %buf1.i57, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %1, align 4
  %call.i58 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %msg.i53, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i58)
  %cmp.not.i59 = icmp eq i32 %call.i58, 1
  br i1 %cmp.not.i59, label %mb86a20s_i2c_writereg.exit64.thread, label %mb86a20s_i2c_writereg.exit64

mb86a20s_i2c_writereg.exit64.thread:              ; preds = %mb86a20s_i2c_readreg.exit51
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #8
  br label %if.end65

mb86a20s_i2c_writereg.exit64:                     ; preds = %mb86a20s_i2c_readreg.exit51
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  %dev.i60 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 9
  %conv5.i61 = zext i8 %conv60 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i58, i32 noundef 80, i32 noundef %conv5.i61) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp62 = icmp slt i32 %call.i58, 0
  br i1 %cmp62, label %mb86a20s_i2c_writereg.exit64.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit64.if.end65_crit_edge

mb86a20s_i2c_writereg.exit64.if.end65_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

mb86a20s_i2c_writereg.exit64.cleanup_crit_edge:   ; preds = %mb86a20s_i2c_writereg.exit64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %mb86a20s_i2c_writereg.exit64.if.end65_crit_edge, %mb86a20s_i2c_writereg.exit64.thread
  %112 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config, align 4
  %demod_address67 = getelementptr inbounds %struct.mb86a20s_config, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %demod_address67 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %demod_address67, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i65)
  %116 = ptrtoint ptr %reg.addr.i65 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 81, ptr %reg.addr.i65, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i66) #8
  %117 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 -1, ptr %val.i66, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i67) #8
  %118 = call ptr @memset(ptr %50, i32 255, i32 16)
  %conv.i68 = zext i8 %115 to i16
  %119 = ptrtoint ptr %msg.i67 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i68, ptr %msg.i67, align 4
  %120 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 0, ptr %flags.i69, align 2
  %121 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 1, ptr %50, align 4
  %122 = ptrtoint ptr %buf.i71 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %reg.addr.i65, ptr %buf.i71, align 4
  %123 = ptrtoint ptr %arrayinit.element.i72 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i68, ptr %arrayinit.element.i72, align 4
  %124 = ptrtoint ptr %flags3.i73 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 1, ptr %flags3.i73, align 2
  %125 = ptrtoint ptr %len4.i74 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 1, ptr %len4.i74, align 4
  %126 = ptrtoint ptr %buf5.i75 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %val.i66, ptr %buf5.i75, align 4
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %call.i76 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i67, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i76)
  %cmp.not.i77 = icmp eq i32 %call.i76, 2
  br i1 %cmp.not.i77, label %mb86a20s_i2c_readreg.exit86, label %do.end.i82

do.end.i82:                                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 4
  %dev.i78 = getelementptr inbounds %struct.i2c_adapter, ptr %130, i32 0, i32 9
  %131 = ptrtoint ptr %reg.addr.i65 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %reg.addr.i65, align 1
  %conv8.i79 = zext i8 %132 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i78, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i79, i32 noundef %call.i76) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i67) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i66) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i65)
  br label %cleanup

mb86a20s_i2c_readreg.exit86:                      ; preds = %if.end65
  %133 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %val.i66, align 1
  %conv11.i83 = zext i8 %134 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i67) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i66) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i65)
  %shl73 = shl nuw nsw i32 %conv11.i83, 8
  %or = or i32 %shl73, %shl55
  %135 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %config, align 4
  %demod_address75 = getelementptr inbounds %struct.mb86a20s_config, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %demod_address75 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %demod_address75, align 4
  %conv78 = add i8 %64, 84
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i87) #8
  %139 = ptrtoint ptr %buf.i87 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 80, ptr %buf.i87, align 1
  %140 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %conv78, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i88) #8
  %141 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 196607, ptr %52, align 4
  %conv.i89 = zext i8 %138 to i16
  %142 = ptrtoint ptr %msg.i88 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i89, ptr %msg.i88, align 4
  %143 = ptrtoint ptr %flags.i90 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %flags.i90, align 2
  %144 = ptrtoint ptr %buf1.i92 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %buf.i87, ptr %buf1.i92, align 4
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %call.i93 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msg.i88, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i93)
  %cmp.not.i94 = icmp eq i32 %call.i93, 1
  br i1 %cmp.not.i94, label %mb86a20s_i2c_writereg.exit99.thread, label %mb86a20s_i2c_writereg.exit99

mb86a20s_i2c_writereg.exit99.thread:              ; preds = %mb86a20s_i2c_readreg.exit86
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i87) #8
  br label %if.end83

mb86a20s_i2c_writereg.exit99:                     ; preds = %mb86a20s_i2c_readreg.exit86
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %dev.i95 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  %conv5.i96 = zext i8 %conv78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i95, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i93, i32 noundef 80, i32 noundef %conv5.i96) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i88) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i87) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp80 = icmp slt i32 %call.i93, 0
  br i1 %cmp80, label %mb86a20s_i2c_writereg.exit99.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit99.if.end83_crit_edge

mb86a20s_i2c_writereg.exit99.if.end83_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

mb86a20s_i2c_writereg.exit99.cleanup_crit_edge:   ; preds = %mb86a20s_i2c_writereg.exit99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end83:                                         ; preds = %mb86a20s_i2c_writereg.exit99.if.end83_crit_edge, %mb86a20s_i2c_writereg.exit99.thread
  %149 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %config, align 4
  %demod_address85 = getelementptr inbounds %struct.mb86a20s_config, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %demod_address85 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %demod_address85, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i100)
  %153 = ptrtoint ptr %reg.addr.i100 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 81, ptr %reg.addr.i100, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i101) #8
  %154 = ptrtoint ptr %val.i101 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 -1, ptr %val.i101, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i102) #8
  %155 = call ptr @memset(ptr %53, i32 255, i32 16)
  %conv.i103 = zext i8 %152 to i16
  %156 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv.i103, ptr %msg.i102, align 4
  %157 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 0, ptr %flags.i104, align 2
  %158 = ptrtoint ptr %53 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 1, ptr %53, align 4
  %159 = ptrtoint ptr %buf.i106 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %reg.addr.i100, ptr %buf.i106, align 4
  %160 = ptrtoint ptr %arrayinit.element.i107 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv.i103, ptr %arrayinit.element.i107, align 4
  %161 = ptrtoint ptr %flags3.i108 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 1, ptr %flags3.i108, align 2
  %162 = ptrtoint ptr %len4.i109 to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 1, ptr %len4.i109, align 4
  %163 = ptrtoint ptr %buf5.i110 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %val.i101, ptr %buf5.i110, align 4
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 4
  %call.i111 = call i32 @i2c_transfer(ptr noundef %165, ptr noundef nonnull %msg.i102, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i111)
  %cmp.not.i112 = icmp eq i32 %call.i111, 2
  br i1 %cmp.not.i112, label %mb86a20s_i2c_readreg.exit121, label %do.end.i117

do.end.i117:                                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 4
  %dev.i113 = getelementptr inbounds %struct.i2c_adapter, ptr %167, i32 0, i32 9
  %168 = ptrtoint ptr %reg.addr.i100 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %reg.addr.i100, align 1
  %conv8.i114 = zext i8 %169 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i113, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i114, i32 noundef %call.i111) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i102) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i101) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i100)
  br label %cleanup

mb86a20s_i2c_readreg.exit121:                     ; preds = %if.end83
  %170 = ptrtoint ptr %val.i101 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %val.i101, align 1
  %conv11.i118 = zext i8 %171 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i102) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i101) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i100)
  %or91 = or i32 %or, %conv11.i118
  %modulation = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 23, i32 %layer.0191, i32 2
  %172 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %modulation, align 4
  %174 = zext i32 %173 to i64
  call void @__sanitizer_cov_trace_switch(i64 %174, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %173, label %sw.bb95 [
    i32 12, label %mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge
    i32 0, label %mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge213
    i32 1, label %sw.bb94
  ]

mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge213: ; preds = %mb86a20s_i2c_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge: ; preds = %mb86a20s_i2c_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb94:                                          ; preds = %mb86a20s_i2c_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb95:                                          ; preds = %mb86a20s_i2c_readreg.exit121
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95, %sw.bb94, %mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge, %mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge213
  %segs.0 = phi ptr [ @cnr_64qam_table, %sw.bb95 ], [ @cnr_16qam_table, %sw.bb94 ], [ @cnr_qpsk_table, %mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge ], [ @cnr_qpsk_table, %mb86a20s_i2c_readreg.exit121.sw.epilog_crit_edge213 ]
  %175 = ptrtoint ptr %segs.0 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %segs.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %176, i32 %or91)
  %cmp.not.i122 = icmp ugt i32 %176, %or91
  br i1 %cmp.not.i122, label %if.end.i123, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %y.i = getelementptr inbounds %struct.linear_segments, ptr %segs.0, i32 0, i32 1
  %177 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %y.i, align 4
  br label %interpolate_value.exit

if.end.i123:                                      ; preds = %sw.epilog
  %arrayidx2.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 30
  %179 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %180, i32 %or91)
  %cmp4.i = icmp ugt i32 %180, %or91
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i123.for.body.i_crit_edge

if.end.i123.for.body.i_crit_edge:                 ; preds = %if.end.i123
  br label %for.body.i

if.then5.i:                                       ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #10
  %y8.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 30, i32 1
  %181 = ptrtoint ptr %y8.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %y8.i, align 4
  br label %interpolate_value.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i123.for.body.i_crit_edge
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %if.end.i123.for.body.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 %i.029.i
  %183 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %or91)
  %cmp14.i = icmp eq i32 %184, %or91
  br i1 %cmp14.i, label %if.then15.i, label %if.end18.i

if.then15.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %y17.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 %i.029.i, i32 1
  %185 = ptrtoint ptr %y17.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %y17.i, align 4
  br label %interpolate_value.exit

if.end18.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %or91)
  %cmp21.i = icmp ult i32 %184, %or91
  br i1 %cmp21.i, label %if.end18.i.for.end.i_crit_edge, label %for.inc.i

if.end18.i.for.end.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end18.i
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end18.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.029.i, %if.end18.i.for.end.i_crit_edge ], [ 30, %for.inc.i.for.end.i_crit_edge ]
  %arrayidx24.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 %i.0.lcssa.i
  %y25.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 %i.0.lcssa.i, i32 1
  %187 = ptrtoint ptr %y25.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %y25.i, align 4
  %sub26.i = add nsw i32 %i.0.lcssa.i, -1
  %arrayidx27.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 %sub26.i
  %y28.i = getelementptr %struct.linear_segments, ptr %segs.0, i32 %sub26.i, i32 1
  %189 = ptrtoint ptr %y28.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %y28.i, align 4
  %sub29.i = sub i32 %188, %190
  %191 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx27.i, align 4
  %193 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx24.i, align 4
  %sub35.i = sub i32 %192, %194
  %sub38.i = sub i32 %or91, %194
  %conv.i124 = zext i32 %sub38.i to i64
  %conv39.i = zext i32 %sub29.i to i64
  %mul.i = mul nuw i64 %conv.i124, %conv39.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp210.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp210.i, label %if.then214.i, label %if.else220.i, !prof !243

if.then214.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv215.i = trunc i64 %mul.i to i32
  %div218.i = udiv i32 %conv215.i, %sub35.i
  br label %if.end224.i

if.else220.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %sub35.i, i64 %mul.i) #13, !srcloc !244
  %asmresult1.i.i = extractvalue { i64, i64 } %195, 1
  %extract.t26.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end224.i

if.end224.i:                                      ; preds = %if.else220.i, %if.then214.i
  %tmp64.0.off0.i = phi i32 [ %div218.i, %if.then214.i ], [ %extract.t26.i, %if.else220.i ]
  %conv230.i = sub i32 %188, %tmp64.0.off0.i
  br label %interpolate_value.exit

interpolate_value.exit:                           ; preds = %if.end224.i, %if.then15.i, %if.then5.i, %if.then.i
  %retval.0.i125 = phi i32 [ %178, %if.then.i ], [ %182, %if.then5.i ], [ %186, %if.then15.i ], [ %conv230.i, %if.end224.i ]
  %add99 = add nuw nsw i32 %layer.0191, 1
  %arrayidx100 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 %add99
  %196 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 1, ptr %arrayidx100, align 1
  %conv102 = zext i32 %retval.0.i125 to i64
  %197 = getelementptr %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 %add99, i32 1
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_storeN_noabort(i32 %198, i32 8)
  store i64 %conv102, ptr %197, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error_layer_CNR, %if.then119)) #8
          to label %for.inc [label %if.then119], !srcloc !240

if.then119:                                       ; preds = %interpolate_value.exit
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %dev121 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 9
  %add122 = add nuw nsw i32 %layer.0191, 65
  %retval.0.i125.frozen = freeze i32 %retval.0.i125
  %div = udiv i32 %retval.0.i125.frozen, 1000
  %201 = mul i32 %div, 1000
  %rem.decomposed = sub i32 %retval.0.i125.frozen, %201
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug321, ptr noundef %dev121, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.58, i32 noundef %add122, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %or91) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then119, %interpolate_value.exit, %if.then36
  %inc.pre-phi = phi i32 [ %add99, %interpolate_value.exit ], [ %add99, %if.then119 ], [ %add, %if.then36 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %202 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %config, align 4
  %demod_address127 = getelementptr inbounds %struct.mb86a20s_config, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %demod_address127 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %demod_address127, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i126) #8
  %206 = getelementptr inbounds [2 x i8], ptr %buf.i126, i32 0, i32 1
  %207 = ptrtoint ptr %buf.i126 to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 80, ptr %buf.i126, align 1
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 80, ptr %206, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i127) #8
  %209 = getelementptr inbounds i8, ptr %msg.i127, i32 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 196607, ptr %209, align 4
  %conv.i128 = zext i8 %205 to i16
  %211 = ptrtoint ptr %msg.i127 to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %conv.i128, ptr %msg.i127, align 4
  %flags.i129 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 1
  %212 = ptrtoint ptr %flags.i129 to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 0, ptr %flags.i129, align 2
  %buf1.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i127, i32 0, i32 3
  %213 = ptrtoint ptr %buf1.i131 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %buf.i126, ptr %buf1.i131, align 4
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %1, align 4
  %call.i132 = call i32 @i2c_transfer(ptr noundef %215, ptr noundef nonnull %msg.i127, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i132)
  %cmp.not.i133 = icmp eq i32 %call.i132, 1
  br i1 %cmp.not.i133, label %mb86a20s_i2c_writereg.exit137.thread, label %mb86a20s_i2c_writereg.exit137

mb86a20s_i2c_writereg.exit137.thread:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i126) #8
  br label %if.end132

mb86a20s_i2c_writereg.exit137:                    ; preds = %for.end
  %216 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %1, align 4
  %dev.i134 = getelementptr inbounds %struct.i2c_adapter, ptr %217, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i134, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i132, i32 noundef 80, i32 noundef 80) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i127) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp129 = icmp slt i32 %call.i132, 0
  br i1 %cmp129, label %mb86a20s_i2c_writereg.exit137.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit137.if.end132_crit_edge

mb86a20s_i2c_writereg.exit137.if.end132_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

mb86a20s_i2c_writereg.exit137.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit137
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end132:                                        ; preds = %mb86a20s_i2c_writereg.exit137.if.end132_crit_edge, %mb86a20s_i2c_writereg.exit137.thread
  %218 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %config, align 4
  %demod_address134 = getelementptr inbounds %struct.mb86a20s_config, ptr %219, i32 0, i32 1
  %220 = ptrtoint ptr %demod_address134 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %demod_address134, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i138)
  %222 = ptrtoint ptr %reg.addr.i138 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 81, ptr %reg.addr.i138, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i139) #8
  %223 = ptrtoint ptr %val.i139 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 -1, ptr %val.i139, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i140) #8
  %224 = getelementptr inbounds i8, ptr %msg.i140, i32 4
  %225 = call ptr @memset(ptr %224, i32 255, i32 16)
  %conv.i141 = zext i8 %221 to i16
  %226 = ptrtoint ptr %msg.i140 to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 %conv.i141, ptr %msg.i140, align 4
  %flags.i142 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 0, i32 1
  %227 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %flags.i142, align 2
  %228 = ptrtoint ptr %224 to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 1, ptr %224, align 4
  %buf.i144 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 0, i32 3
  %229 = ptrtoint ptr %buf.i144 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %reg.addr.i138, ptr %buf.i144, align 4
  %arrayinit.element.i145 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 1
  %230 = ptrtoint ptr %arrayinit.element.i145 to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %conv.i141, ptr %arrayinit.element.i145, align 4
  %flags3.i146 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 1, i32 1
  %231 = ptrtoint ptr %flags3.i146 to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 1, ptr %flags3.i146, align 2
  %len4.i147 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 1, i32 2
  %232 = ptrtoint ptr %len4.i147 to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %len4.i147, align 4
  %buf5.i148 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i140, i32 1, i32 3
  %233 = ptrtoint ptr %buf5.i148 to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr %val.i139, ptr %buf5.i148, align 4
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %1, align 4
  %call.i149 = call i32 @i2c_transfer(ptr noundef %235, ptr noundef nonnull %msg.i140, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i149)
  %cmp.not.i150 = icmp eq i32 %call.i149, 2
  br i1 %cmp.not.i150, label %mb86a20s_i2c_readreg.exit159, label %do.end.i155

do.end.i155:                                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %1, align 4
  %dev.i151 = getelementptr inbounds %struct.i2c_adapter, ptr %237, i32 0, i32 9
  %238 = ptrtoint ptr %reg.addr.i138 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %reg.addr.i138, align 1
  %conv8.i152 = zext i8 %239 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i151, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i152, i32 noundef %call.i149) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i140) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i139) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i138)
  br label %cleanup

mb86a20s_i2c_readreg.exit159:                     ; preds = %if.end132
  %240 = ptrtoint ptr %val.i139 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %val.i139, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i140) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i139) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i138)
  %242 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %config, align 4
  %demod_address141 = getelementptr inbounds %struct.mb86a20s_config, ptr %243, i32 0, i32 1
  %244 = ptrtoint ptr %demod_address141 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %demod_address141, align 4
  %conv143 = or i8 %241, 1
  %call144 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %245, i8 noundef zeroext 81, i8 noundef zeroext %conv143)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %cmp145 = icmp slt i32 %call144, 0
  br i1 %cmp145, label %mb86a20s_i2c_readreg.exit159.cleanup_crit_edge, label %if.end148

mb86a20s_i2c_readreg.exit159.cleanup_crit_edge:   ; preds = %mb86a20s_i2c_readreg.exit159
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end148:                                        ; preds = %mb86a20s_i2c_readreg.exit159
  call void @__sanitizer_cov_trace_pc() #10
  %246 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %config, align 4
  %demod_address150 = getelementptr inbounds %struct.mb86a20s_config, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %demod_address150 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %demod_address150, align 4
  %conv152 = and i8 %241, 6
  %call153 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %249, i8 noundef zeroext 81, i8 noundef zeroext %conv152)
  br label %cleanup

cleanup:                                          ; preds = %if.end148, %mb86a20s_i2c_readreg.exit159.cleanup_crit_edge, %do.end.i155, %mb86a20s_i2c_writereg.exit137.cleanup_crit_edge, %do.end.i117, %mb86a20s_i2c_writereg.exit99.cleanup_crit_edge, %do.end.i82, %mb86a20s_i2c_writereg.exit64.cleanup_crit_edge, %do.end.i47, %mb86a20s_i2c_writereg.exit29.cleanup_crit_edge, %if.then26, %do.body14, %do.end.i16, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_pre_ber(ptr nocapture noundef readonly %fe, i32 noundef %layer, ptr nocapture noundef %error, ptr nocapture noundef %count) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i505 = alloca i8, align 1
  %val.i506 = alloca i8, align 1
  %msg.i507 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i495 = alloca [2 x i8], align 1
  %msg.i496 = alloca %struct.i2c_msg, align 4
  %reg.addr.i473 = alloca i8, align 1
  %val.i474 = alloca i8, align 1
  %msg.i475 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i451 = alloca i8, align 1
  %val.i452 = alloca i8, align 1
  %msg.i453 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i429 = alloca i8, align 1
  %val.i430 = alloca i8, align 1
  %msg.i431 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_pre_ber, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.61) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layer)
  %cmp = icmp ugt i32 %layer, 2
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %8 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 84, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i = zext i8 %7 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val.i, ptr %buf5.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %mb86a20s_i2c_readreg.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end4
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %27 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %shl = shl nuw nsw i32 1, %layer
  %and = and i32 %shl, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body11, label %if.end29

do.body11:                                        ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_pre_ber, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !240

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev25 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  %add = add nuw nsw i32 %layer, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug303, ptr noundef %dev25, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i32 noundef %add) #8
  br label %cleanup

if.end29:                                         ; preds = %mb86a20s_i2c_readreg.exit
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config, align 4
  %demod_address31 = getelementptr inbounds %struct.mb86a20s_config, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %demod_address31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %demod_address31, align 4
  %34 = trunc i32 %layer to i8
  %35 = mul nuw nsw i8 %34, 3
  %conv = add nuw nsw i8 %35, 85
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i429)
  %36 = ptrtoint ptr %reg.addr.i429 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %reg.addr.i429, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i430) #8
  %37 = ptrtoint ptr %val.i430 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %val.i430, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i431) #8
  %38 = getelementptr inbounds i8, ptr %msg.i431, i32 4
  %39 = call ptr @memset(ptr %38, i32 255, i32 16)
  %conv.i432 = zext i8 %33 to i16
  %40 = ptrtoint ptr %msg.i431 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i432, ptr %msg.i431, align 4
  %flags.i433 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i433 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i433, align 2
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %38, align 4
  %buf.i435 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i435 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reg.addr.i429, ptr %buf.i435, align 4
  %arrayinit.element.i436 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 1
  %44 = ptrtoint ptr %arrayinit.element.i436 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i432, ptr %arrayinit.element.i436, align 4
  %flags3.i437 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 1, i32 1
  %45 = ptrtoint ptr %flags3.i437 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %flags3.i437, align 2
  %len4.i438 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 1, i32 2
  %46 = ptrtoint ptr %len4.i438 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %len4.i438, align 4
  %buf5.i439 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i431, i32 1, i32 3
  %47 = ptrtoint ptr %buf5.i439 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %val.i430, ptr %buf5.i439, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i440 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i431, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i440)
  %cmp.not.i441 = icmp eq i32 %call.i440, 2
  br i1 %cmp.not.i441, label %mb86a20s_i2c_readreg.exit450, label %do.end.i446

do.end.i446:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i442 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %reg.addr.i429 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg.addr.i429, align 1
  %conv8.i443 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i442, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i443, i32 noundef %call.i440) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i440)
  %cmp9.i444 = icmp slt i32 %call.i440, 0
  %spec.select548 = select i1 %cmp9.i444, i32 %call.i440, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i431) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i430) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i429)
  br label %cleanup

mb86a20s_i2c_readreg.exit450:                     ; preds = %if.end29
  %54 = ptrtoint ptr %val.i430 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %val.i430, align 1
  %conv11.i447 = zext i8 %55 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i431) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i430) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i429)
  %shl38 = shl nuw nsw i32 %conv11.i447, 16
  %56 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl38, ptr %error, align 4
  %57 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config, align 4
  %demod_address40 = getelementptr inbounds %struct.mb86a20s_config, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %demod_address40 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %demod_address40, align 4
  %conv43 = add nuw nsw i8 %35, 86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i451)
  %61 = ptrtoint ptr %reg.addr.i451 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv43, ptr %reg.addr.i451, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i452) #8
  %62 = ptrtoint ptr %val.i452 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %val.i452, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i453) #8
  %63 = getelementptr inbounds i8, ptr %msg.i453, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %conv.i454 = zext i8 %60 to i16
  %65 = ptrtoint ptr %msg.i453 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i454, ptr %msg.i453, align 4
  %flags.i455 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i453, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i455 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i455, align 2
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %63, align 4
  %buf.i457 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i453, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i457 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %reg.addr.i451, ptr %buf.i457, align 4
  %arrayinit.element.i458 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i453, i32 1
  %69 = ptrtoint ptr %arrayinit.element.i458 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i454, ptr %arrayinit.element.i458, align 4
  %flags3.i459 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i453, i32 1, i32 1
  %70 = ptrtoint ptr %flags3.i459 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags3.i459, align 2
  %len4.i460 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i453, i32 1, i32 2
  %71 = ptrtoint ptr %len4.i460 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %len4.i460, align 4
  %buf5.i461 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i453, i32 1, i32 3
  %72 = ptrtoint ptr %buf5.i461 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %val.i452, ptr %buf5.i461, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i462 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i453, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i462)
  %cmp.not.i463 = icmp eq i32 %call.i462, 2
  br i1 %cmp.not.i463, label %mb86a20s_i2c_readreg.exit472, label %do.end.i468

do.end.i468:                                      ; preds = %mb86a20s_i2c_readreg.exit450
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %dev.i464 = getelementptr inbounds %struct.i2c_adapter, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %reg.addr.i451 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reg.addr.i451, align 1
  %conv8.i465 = zext i8 %78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i464, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i465, i32 noundef %call.i462) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i462)
  %cmp9.i466 = icmp slt i32 %call.i462, 0
  %spec.select549 = select i1 %cmp9.i466, i32 %call.i462, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i453) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i452) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i451)
  br label %cleanup

mb86a20s_i2c_readreg.exit472:                     ; preds = %mb86a20s_i2c_readreg.exit450
  %79 = ptrtoint ptr %val.i452 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val.i452, align 1
  %conv11.i469 = zext i8 %80 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i453) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i452) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i451)
  %shl49 = shl nuw nsw i32 %conv11.i469, 8
  %81 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error, align 4
  %or = or i32 %82, %shl49
  store i32 %or, ptr %error, align 4
  %83 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config, align 4
  %demod_address51 = getelementptr inbounds %struct.mb86a20s_config, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %demod_address51 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %demod_address51, align 4
  %conv54 = add nuw nsw i8 %35, 87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i473)
  %87 = ptrtoint ptr %reg.addr.i473 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv54, ptr %reg.addr.i473, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i474) #8
  %88 = ptrtoint ptr %val.i474 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %val.i474, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i475) #8
  %89 = getelementptr inbounds i8, ptr %msg.i475, i32 4
  %90 = call ptr @memset(ptr %89, i32 255, i32 16)
  %conv.i476 = zext i8 %86 to i16
  %91 = ptrtoint ptr %msg.i475 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i476, ptr %msg.i475, align 4
  %flags.i477 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i475, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i477 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i477, align 2
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %89, align 4
  %buf.i479 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i475, i32 0, i32 3
  %94 = ptrtoint ptr %buf.i479 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %reg.addr.i473, ptr %buf.i479, align 4
  %arrayinit.element.i480 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i475, i32 1
  %95 = ptrtoint ptr %arrayinit.element.i480 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i476, ptr %arrayinit.element.i480, align 4
  %flags3.i481 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i475, i32 1, i32 1
  %96 = ptrtoint ptr %flags3.i481 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %flags3.i481, align 2
  %len4.i482 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i475, i32 1, i32 2
  %97 = ptrtoint ptr %len4.i482 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1, ptr %len4.i482, align 4
  %buf5.i483 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i475, i32 1, i32 3
  %98 = ptrtoint ptr %buf5.i483 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %val.i474, ptr %buf5.i483, align 4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %call.i484 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msg.i475, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i484)
  %cmp.not.i485 = icmp eq i32 %call.i484, 2
  br i1 %cmp.not.i485, label %mb86a20s_i2c_readreg.exit494, label %do.end.i490

do.end.i490:                                      ; preds = %mb86a20s_i2c_readreg.exit472
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %dev.i486 = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %reg.addr.i473 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %reg.addr.i473, align 1
  %conv8.i487 = zext i8 %104 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i486, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i487, i32 noundef %call.i484) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i484)
  %cmp9.i488 = icmp slt i32 %call.i484, 0
  %spec.select550 = select i1 %cmp9.i488, i32 %call.i484, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i475) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i474) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i473)
  br label %cleanup

mb86a20s_i2c_readreg.exit494:                     ; preds = %mb86a20s_i2c_readreg.exit472
  %105 = ptrtoint ptr %val.i474 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %val.i474, align 1
  %conv11.i491 = zext i8 %106 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i475) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i474) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i473)
  %107 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %error, align 4
  %or60 = or i32 %108, %conv11.i491
  store i32 %or60, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_pre_ber, %if.then73)) #8
          to label %do.end79 [label %if.then73], !srcloc !240

if.then73:                                        ; preds = %mb86a20s_i2c_readreg.exit494
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %dev75 = getelementptr inbounds %struct.i2c_adapter, ptr %110, i32 0, i32 9
  %add76 = add nuw nsw i32 %layer, 65
  %111 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug304, ptr noundef %dev75, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %add76, i32 noundef %112) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %mb86a20s_i2c_readreg.exit494
  %113 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config, align 4
  %demod_address81 = getelementptr inbounds %struct.mb86a20s_config, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %demod_address81 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %demod_address81, align 4
  %conv84 = add nuw nsw i8 %35, -89
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i495) #8
  %117 = getelementptr inbounds [2 x i8], ptr %buf.i495, i32 0, i32 1
  %118 = ptrtoint ptr %buf.i495 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 80, ptr %buf.i495, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv84, ptr %117, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i496) #8
  %120 = getelementptr inbounds i8, ptr %msg.i496, i32 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 196607, ptr %120, align 4
  %conv.i497 = zext i8 %116 to i16
  %122 = ptrtoint ptr %msg.i496 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv.i497, ptr %msg.i496, align 4
  %flags.i498 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i496, i32 0, i32 1
  %123 = ptrtoint ptr %flags.i498 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 0, ptr %flags.i498, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i496, i32 0, i32 3
  %124 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %buf.i495, ptr %buf1.i, align 4
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %1, align 4
  %call.i500 = call i32 @i2c_transfer(ptr noundef %126, ptr noundef nonnull %msg.i496, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i500)
  %cmp.not.i501 = icmp eq i32 %call.i500, 1
  br i1 %cmp.not.i501, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i496) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i495) #8
  br label %if.end89

mb86a20s_i2c_writereg.exit:                       ; preds = %do.end79
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %dev.i502 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 9
  %conv5.i = zext i8 %conv84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i502, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i500, i32 noundef 80, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i496) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i495) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i500)
  %cmp86 = icmp slt i32 %call.i500, 0
  br i1 %cmp86, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end89_crit_edge

mb86a20s_i2c_writereg.exit.if.end89_crit_edge:    ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %mb86a20s_i2c_writereg.exit.if.end89_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %129 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %config, align 4
  %demod_address91 = getelementptr inbounds %struct.mb86a20s_config, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %demod_address91 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %demod_address91, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i505)
  %133 = ptrtoint ptr %reg.addr.i505 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 81, ptr %reg.addr.i505, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i506) #8
  %134 = ptrtoint ptr %val.i506 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 -1, ptr %val.i506, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i507) #8
  %135 = getelementptr inbounds i8, ptr %msg.i507, i32 4
  %136 = call ptr @memset(ptr %135, i32 255, i32 16)
  %conv.i508 = zext i8 %132 to i16
  %137 = ptrtoint ptr %msg.i507 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %conv.i508, ptr %msg.i507, align 4
  %flags.i509 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 0, i32 1
  %138 = ptrtoint ptr %flags.i509 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 0, ptr %flags.i509, align 2
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 1, ptr %135, align 4
  %buf.i511 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 0, i32 3
  %140 = ptrtoint ptr %buf.i511 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %reg.addr.i505, ptr %buf.i511, align 4
  %arrayinit.element.i512 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 1
  %141 = ptrtoint ptr %arrayinit.element.i512 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %conv.i508, ptr %arrayinit.element.i512, align 4
  %flags3.i513 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 1, i32 1
  %142 = ptrtoint ptr %flags3.i513 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 1, ptr %flags3.i513, align 2
  %len4.i514 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 1, i32 2
  %143 = ptrtoint ptr %len4.i514 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %len4.i514, align 4
  %buf5.i515 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i507, i32 1, i32 3
  %144 = ptrtoint ptr %buf5.i515 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %val.i506, ptr %buf5.i515, align 4
  %145 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %1, align 4
  %call.i516 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %msg.i507, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i516)
  %cmp.not.i517 = icmp eq i32 %call.i516, 2
  br i1 %cmp.not.i517, label %mb86a20s_i2c_readreg.exit526, label %do.end.i522

do.end.i522:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %1, align 4
  %dev.i518 = getelementptr inbounds %struct.i2c_adapter, ptr %148, i32 0, i32 9
  %149 = ptrtoint ptr %reg.addr.i505 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %reg.addr.i505, align 1
  %conv8.i519 = zext i8 %150 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i518, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i519, i32 noundef %call.i516) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i516)
  %cmp9.i520 = icmp slt i32 %call.i516, 0
  %spec.select551 = select i1 %cmp9.i520, i32 %call.i516, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i507) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i506) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i505)
  br label %cleanup

mb86a20s_i2c_readreg.exit526:                     ; preds = %if.end89
  %151 = ptrtoint ptr %val.i506 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %val.i506, align 1
  %conv11.i523 = zext i8 %152 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i507) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i506) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i505)
  %shl97 = shl nuw nsw i32 %conv11.i523, 16
  %153 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %shl97, ptr %count, align 4
  %154 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %config, align 4
  %demod_address99 = getelementptr inbounds %struct.mb86a20s_config, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %demod_address99 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %demod_address99, align 4
  %conv102 = add nuw nsw i8 %35, -88
  %call103 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %157, i8 noundef zeroext 80, i8 noundef zeroext %conv102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %mb86a20s_i2c_readreg.exit526.cleanup_crit_edge, label %if.end107

mb86a20s_i2c_readreg.exit526.cleanup_crit_edge:   ; preds = %mb86a20s_i2c_readreg.exit526
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end107:                                        ; preds = %mb86a20s_i2c_readreg.exit526
  %158 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config, align 4
  %demod_address109 = getelementptr inbounds %struct.mb86a20s_config, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %demod_address109 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %demod_address109, align 4
  %call110 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %161, i8 noundef zeroext 81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end107.cleanup_crit_edge, label %if.end114

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %if.end107
  %shl115 = shl i32 %call110, 8
  %162 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %count, align 4
  %or116 = or i32 %163, %shl115
  store i32 %or116, ptr %count, align 4
  %164 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %config, align 4
  %demod_address118 = getelementptr inbounds %struct.mb86a20s_config, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %demod_address118 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %demod_address118, align 4
  %conv121 = add nuw nsw i8 %35, -87
  %call122 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %167, i8 noundef zeroext 80, i8 noundef zeroext %conv121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %if.end114.cleanup_crit_edge, label %if.end126

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end126:                                        ; preds = %if.end114
  %168 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %config, align 4
  %demod_address128 = getelementptr inbounds %struct.mb86a20s_config, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %demod_address128 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %demod_address128, align 4
  %call129 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %171, i8 noundef zeroext 81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.end126.cleanup_crit_edge, label %if.end133

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end133:                                        ; preds = %if.end126
  %172 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %count, align 4
  %or134 = or i32 %173, %call129
  store i32 %or134, ptr %count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_pre_ber, %if.then147)) #8
          to label %do.end153 [label %if.then147], !srcloc !240

if.then147:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %174 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %1, align 4
  %dev149 = getelementptr inbounds %struct.i2c_adapter, ptr %175, i32 0, i32 9
  %add150 = add nuw nsw i32 %layer, 65
  %176 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug305, ptr noundef %dev149, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61, i32 noundef %add150, i32 noundef %177) #8
  br label %do.end153

do.end153:                                        ; preds = %if.then147, %if.end133
  %arrayidx = getelementptr %struct.mb86a20s_state, ptr %1, i32 0, i32 8, i32 %layer
  %178 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool154.not = icmp eq i32 %179, 0
  br i1 %tobool154.not, label %do.end153.if.else_crit_edge, label %land.lhs.true

do.end153.if.else_crit_edge:                      ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end153
  %180 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %179, i32 %181)
  %cmp157.not = icmp eq i32 %179, %181
  br i1 %cmp157.not, label %land.lhs.true.if.else_crit_edge, label %do.body160

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

do.body160:                                       ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_pre_ber, %if.then172)) #8
          to label %do.end180 [label %if.then172], !srcloc !240

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  %182 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %1, align 4
  %dev174 = getelementptr inbounds %struct.i2c_adapter, ptr %183, i32 0, i32 9
  %add175 = add nuw nsw i32 %layer, 65
  %184 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug306, ptr noundef %dev174, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.61, i32 noundef %add175, i32 noundef %185) #8
  br label %do.end180

do.end180:                                        ; preds = %if.then172, %do.body160
  %186 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %config, align 4
  %demod_address182 = getelementptr inbounds %struct.mb86a20s_config, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %demod_address182 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %demod_address182, align 4
  %call183 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %189, i8 noundef zeroext 82, i8 noundef zeroext 0)
  %190 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %config, align 4
  %demod_address185 = getelementptr inbounds %struct.mb86a20s_config, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %demod_address185 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %demod_address185, align 4
  %call189 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %193, i8 noundef zeroext 80, i8 noundef zeroext %conv84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %do.end180.cleanup_crit_edge, label %if.end193

do.end180.cleanup_crit_edge:                      ; preds = %do.end180
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end193:                                        ; preds = %do.end180
  %194 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %config, align 4
  %demod_address195 = getelementptr inbounds %struct.mb86a20s_config, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %demod_address195 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %demod_address195, align 4
  %198 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %199, 16
  %conv198 = trunc i32 %shr to i8
  %call199 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %197, i8 noundef zeroext 81, i8 noundef zeroext %conv198)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %if.end193.cleanup_crit_edge, label %if.end203

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end203:                                        ; preds = %if.end193
  %200 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %config, align 4
  %demod_address205 = getelementptr inbounds %struct.mb86a20s_config, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %demod_address205 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %demod_address205, align 4
  %call209 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %203, i8 noundef zeroext 80, i8 noundef zeroext %conv102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp slt i32 %call209, 0
  br i1 %cmp210, label %if.end203.cleanup_crit_edge, label %if.end213

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end213:                                        ; preds = %if.end203
  %204 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %config, align 4
  %demod_address215 = getelementptr inbounds %struct.mb86a20s_config, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %demod_address215 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %demod_address215, align 4
  %208 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx, align 4
  %shr218 = lshr i32 %209, 8
  %conv219 = trunc i32 %shr218 to i8
  %call220 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %207, i8 noundef zeroext 81, i8 noundef zeroext %conv219)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call220)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.end213.cleanup_crit_edge, label %if.end224

if.end213.cleanup_crit_edge:                      ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end224:                                        ; preds = %if.end213
  %210 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %config, align 4
  %demod_address226 = getelementptr inbounds %struct.mb86a20s_config, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %demod_address226 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %demod_address226, align 4
  %call230 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %213, i8 noundef zeroext 80, i8 noundef zeroext %conv121)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %cmp231 = icmp slt i32 %call230, 0
  br i1 %cmp231, label %if.end224.cleanup_crit_edge, label %if.end234

if.end224.cleanup_crit_edge:                      ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end234:                                        ; preds = %if.end224
  %214 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %config, align 4
  %demod_address236 = getelementptr inbounds %struct.mb86a20s_config, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %demod_address236 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %demod_address236, align 4
  %218 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx, align 4
  %conv239 = trunc i32 %219 to i8
  %call240 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %217, i8 noundef zeroext 81, i8 noundef zeroext %conv239)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %cmp241 = icmp slt i32 %call240, 0
  br i1 %cmp241, label %if.end234.cleanup_crit_edge, label %if.end244

if.end234.cleanup_crit_edge:                      ; preds = %if.end234
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end244:                                        ; preds = %if.end234
  %220 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %config, align 4
  %demod_address246 = getelementptr inbounds %struct.mb86a20s_config, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %demod_address246 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %demod_address246, align 4
  %call247 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %223, i8 noundef zeroext 82, i8 noundef zeroext 1)
  %224 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %config, align 4
  %demod_address249 = getelementptr inbounds %struct.mb86a20s_config, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %demod_address249 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %demod_address249, align 4
  %call250 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %227, i8 noundef zeroext 83, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %cmp251 = icmp slt i32 %call250, 0
  br i1 %cmp251, label %if.end244.cleanup_crit_edge, label %if.end254

if.end244.cleanup_crit_edge:                      ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end254:                                        ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #10
  %228 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %config, align 4
  %demod_address256 = getelementptr inbounds %struct.mb86a20s_config, ptr %229, i32 0, i32 1
  %230 = ptrtoint ptr %demod_address256 to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %demod_address256, align 4
  %call257 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %231, i8 noundef zeroext 83, i8 noundef zeroext 7)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end153.if.else_crit_edge
  %232 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %config, align 4
  %demod_address259 = getelementptr inbounds %struct.mb86a20s_config, ptr %233, i32 0, i32 1
  %234 = ptrtoint ptr %demod_address259 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %demod_address259, align 4
  %call260 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %235, i8 noundef zeroext 83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call260)
  %cmp261 = icmp slt i32 %call260, 0
  br i1 %cmp261, label %if.else.cleanup_crit_edge, label %if.end264

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end264:                                        ; preds = %if.else
  %236 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %config, align 4
  %demod_address266 = getelementptr inbounds %struct.mb86a20s_config, ptr %237, i32 0, i32 1
  %238 = ptrtoint ptr %demod_address266 to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %demod_address266, align 4
  %neg = xor i32 %shl, -1
  %and268 = and i32 %call260, %neg
  %conv269 = trunc i32 %and268 to i8
  %call270 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %239, i8 noundef zeroext 83, i8 noundef zeroext %conv269)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270)
  %cmp271 = icmp slt i32 %call270, 0
  br i1 %cmp271, label %if.end264.cleanup_crit_edge, label %if.end274

if.end264.cleanup_crit_edge:                      ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end274:                                        ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %config, align 4
  %demod_address276 = getelementptr inbounds %struct.mb86a20s_config, ptr %241, i32 0, i32 1
  %242 = ptrtoint ptr %demod_address276 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %demod_address276, align 4
  %or278 = or i32 %call260, %shl
  %conv279 = trunc i32 %or278 to i8
  %call280 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %243, i8 noundef zeroext 83, i8 noundef zeroext %conv279)
  br label %cleanup

cleanup:                                          ; preds = %if.end274, %if.end264.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end254, %if.end244.cleanup_crit_edge, %if.end234.cleanup_crit_edge, %if.end224.cleanup_crit_edge, %if.end213.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %if.end193.cleanup_crit_edge, %do.end180.cleanup_crit_edge, %if.end126.cleanup_crit_edge, %if.end114.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %mb86a20s_i2c_readreg.exit526.cleanup_crit_edge, %do.end.i522, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %do.end.i490, %do.end.i468, %do.end.i446, %if.then23, %do.body11, %do.end.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -16, %if.then23 ], [ %call.i500, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ], [ %call103, %mb86a20s_i2c_readreg.exit526.cleanup_crit_edge ], [ %call110, %if.end107.cleanup_crit_edge ], [ %call122, %if.end114.cleanup_crit_edge ], [ %call129, %if.end126.cleanup_crit_edge ], [ %call189, %do.end180.cleanup_crit_edge ], [ %call199, %if.end193.cleanup_crit_edge ], [ %call209, %if.end203.cleanup_crit_edge ], [ %call220, %if.end213.cleanup_crit_edge ], [ %call230, %if.end224.cleanup_crit_edge ], [ %call240, %if.end234.cleanup_crit_edge ], [ %call250, %if.end244.cleanup_crit_edge ], [ %call260, %if.else.cleanup_crit_edge ], [ %call270, %if.end264.cleanup_crit_edge ], [ %call257, %if.end254 ], [ %call280, %if.end274 ], [ %spec.select, %do.end.i ], [ -16, %do.body11 ], [ %spec.select548, %do.end.i446 ], [ %spec.select549, %do.end.i468 ], [ %spec.select550, %do.end.i490 ], [ %spec.select551, %do.end.i522 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_post_ber(ptr nocapture noundef readonly %fe, i32 noundef %layer, ptr nocapture noundef %error, ptr nocapture noundef %count) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i454 = alloca i8, align 1
  %val.i455 = alloca i8, align 1
  %msg.i456 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i444 = alloca [2 x i8], align 1
  %msg.i445 = alloca %struct.i2c_msg, align 4
  %reg.addr.i422 = alloca i8, align 1
  %val.i423 = alloca i8, align 1
  %msg.i424 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i400 = alloca i8, align 1
  %val.i401 = alloca i8, align 1
  %msg.i402 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i378 = alloca i8, align 1
  %val.i379 = alloca i8, align 1
  %msg.i380 = alloca [2 x %struct.i2c_msg], align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_post_ber, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.66) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layer)
  %cmp = icmp ugt i32 %layer, 2
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %8 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 96, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %conv.i = zext i8 %7 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %10, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %reg.addr.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %18 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val.i, ptr %buf5.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %mb86a20s_i2c_readreg.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %25 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end4
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %27 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %shl = shl nuw nsw i32 1, %layer
  %and = and i32 %shl, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body11, label %if.end29

do.body11:                                        ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_post_ber, %if.then23)) #8
          to label %cleanup [label %if.then23], !srcloc !240

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %dev25 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  %add = add nuw nsw i32 %layer, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug308, ptr noundef %dev25, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, i32 noundef %add) #8
  br label %cleanup

if.end29:                                         ; preds = %mb86a20s_i2c_readreg.exit
  %30 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config, align 4
  %demod_address31 = getelementptr inbounds %struct.mb86a20s_config, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %demod_address31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %demod_address31, align 4
  %34 = trunc i32 %layer to i8
  %35 = mul nuw nsw i8 %34, 3
  %conv = add nuw nsw i8 %35, 100
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i378)
  %36 = ptrtoint ptr %reg.addr.i378 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv, ptr %reg.addr.i378, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i379) #8
  %37 = ptrtoint ptr %val.i379 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %val.i379, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i380) #8
  %38 = getelementptr inbounds i8, ptr %msg.i380, i32 4
  %39 = call ptr @memset(ptr %38, i32 255, i32 16)
  %conv.i381 = zext i8 %33 to i16
  %40 = ptrtoint ptr %msg.i380 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i381, ptr %msg.i380, align 4
  %flags.i382 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 0, i32 1
  %41 = ptrtoint ptr %flags.i382 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %flags.i382, align 2
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %38, align 4
  %buf.i384 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 0, i32 3
  %43 = ptrtoint ptr %buf.i384 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %reg.addr.i378, ptr %buf.i384, align 4
  %arrayinit.element.i385 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1
  %44 = ptrtoint ptr %arrayinit.element.i385 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i381, ptr %arrayinit.element.i385, align 4
  %flags3.i386 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1, i32 1
  %45 = ptrtoint ptr %flags3.i386 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 1, ptr %flags3.i386, align 2
  %len4.i387 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1, i32 2
  %46 = ptrtoint ptr %len4.i387 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 1, ptr %len4.i387, align 4
  %buf5.i388 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i380, i32 1, i32 3
  %47 = ptrtoint ptr %buf5.i388 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %val.i379, ptr %buf5.i388, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i389 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i380, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i389)
  %cmp.not.i390 = icmp eq i32 %call.i389, 2
  br i1 %cmp.not.i390, label %mb86a20s_i2c_readreg.exit399, label %do.end.i395

do.end.i395:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %dev.i391 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %reg.addr.i378 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg.addr.i378, align 1
  %conv8.i392 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i391, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i392, i32 noundef %call.i389) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i389)
  %cmp9.i393 = icmp slt i32 %call.i389, 0
  %spec.select497 = select i1 %cmp9.i393, i32 %call.i389, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i380) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i379) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i378)
  br label %cleanup

mb86a20s_i2c_readreg.exit399:                     ; preds = %if.end29
  %54 = ptrtoint ptr %val.i379 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %val.i379, align 1
  %conv11.i396 = zext i8 %55 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i380) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i379) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i378)
  %shl38 = shl nuw nsw i32 %conv11.i396, 16
  %56 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl38, ptr %error, align 4
  %57 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %config, align 4
  %demod_address40 = getelementptr inbounds %struct.mb86a20s_config, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %demod_address40 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %demod_address40, align 4
  %conv43 = add nuw nsw i8 %35, 101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i400)
  %61 = ptrtoint ptr %reg.addr.i400 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv43, ptr %reg.addr.i400, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i401) #8
  %62 = ptrtoint ptr %val.i401 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -1, ptr %val.i401, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i402) #8
  %63 = getelementptr inbounds i8, ptr %msg.i402, i32 4
  %64 = call ptr @memset(ptr %63, i32 255, i32 16)
  %conv.i403 = zext i8 %60 to i16
  %65 = ptrtoint ptr %msg.i402 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv.i403, ptr %msg.i402, align 4
  %flags.i404 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i404 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %flags.i404, align 2
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %63, align 4
  %buf.i406 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 0, i32 3
  %68 = ptrtoint ptr %buf.i406 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %reg.addr.i400, ptr %buf.i406, align 4
  %arrayinit.element.i407 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 1
  %69 = ptrtoint ptr %arrayinit.element.i407 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i403, ptr %arrayinit.element.i407, align 4
  %flags3.i408 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 1, i32 1
  %70 = ptrtoint ptr %flags3.i408 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 1, ptr %flags3.i408, align 2
  %len4.i409 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 1, i32 2
  %71 = ptrtoint ptr %len4.i409 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %len4.i409, align 4
  %buf5.i410 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i402, i32 1, i32 3
  %72 = ptrtoint ptr %buf5.i410 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %val.i401, ptr %buf5.i410, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  %call.i411 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %msg.i402, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i411)
  %cmp.not.i412 = icmp eq i32 %call.i411, 2
  br i1 %cmp.not.i412, label %mb86a20s_i2c_readreg.exit421, label %do.end.i417

do.end.i417:                                      ; preds = %mb86a20s_i2c_readreg.exit399
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %dev.i413 = getelementptr inbounds %struct.i2c_adapter, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %reg.addr.i400 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %reg.addr.i400, align 1
  %conv8.i414 = zext i8 %78 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i413, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i414, i32 noundef %call.i411) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i411)
  %cmp9.i415 = icmp slt i32 %call.i411, 0
  %spec.select498 = select i1 %cmp9.i415, i32 %call.i411, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i402) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i401) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i400)
  br label %cleanup

mb86a20s_i2c_readreg.exit421:                     ; preds = %mb86a20s_i2c_readreg.exit399
  %79 = ptrtoint ptr %val.i401 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %val.i401, align 1
  %conv11.i418 = zext i8 %80 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i402) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i401) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i400)
  %shl49 = shl nuw nsw i32 %conv11.i418, 8
  %81 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %error, align 4
  %or = or i32 %82, %shl49
  store i32 %or, ptr %error, align 4
  %83 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %config, align 4
  %demod_address51 = getelementptr inbounds %struct.mb86a20s_config, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %demod_address51 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %demod_address51, align 4
  %conv54 = add nuw nsw i8 %35, 102
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i422)
  %87 = ptrtoint ptr %reg.addr.i422 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv54, ptr %reg.addr.i422, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i423) #8
  %88 = ptrtoint ptr %val.i423 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %val.i423, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i424) #8
  %89 = getelementptr inbounds i8, ptr %msg.i424, i32 4
  %90 = call ptr @memset(ptr %89, i32 255, i32 16)
  %conv.i425 = zext i8 %86 to i16
  %91 = ptrtoint ptr %msg.i424 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i425, ptr %msg.i424, align 4
  %flags.i426 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i426 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i426, align 2
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1, ptr %89, align 4
  %buf.i428 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 0, i32 3
  %94 = ptrtoint ptr %buf.i428 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %reg.addr.i422, ptr %buf.i428, align 4
  %arrayinit.element.i429 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 1
  %95 = ptrtoint ptr %arrayinit.element.i429 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i425, ptr %arrayinit.element.i429, align 4
  %flags3.i430 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 1, i32 1
  %96 = ptrtoint ptr %flags3.i430 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 1, ptr %flags3.i430, align 2
  %len4.i431 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 1, i32 2
  %97 = ptrtoint ptr %len4.i431 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 1, ptr %len4.i431, align 4
  %buf5.i432 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i424, i32 1, i32 3
  %98 = ptrtoint ptr %buf5.i432 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %val.i423, ptr %buf5.i432, align 4
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %call.i433 = call i32 @i2c_transfer(ptr noundef %100, ptr noundef nonnull %msg.i424, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i433)
  %cmp.not.i434 = icmp eq i32 %call.i433, 2
  br i1 %cmp.not.i434, label %mb86a20s_i2c_readreg.exit443, label %do.end.i439

do.end.i439:                                      ; preds = %mb86a20s_i2c_readreg.exit421
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %1, align 4
  %dev.i435 = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %reg.addr.i422 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %reg.addr.i422, align 1
  %conv8.i436 = zext i8 %104 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i435, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i436, i32 noundef %call.i433) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i433)
  %cmp9.i437 = icmp slt i32 %call.i433, 0
  %spec.select499 = select i1 %cmp9.i437, i32 %call.i433, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i424) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i423) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i422)
  br label %cleanup

mb86a20s_i2c_readreg.exit443:                     ; preds = %mb86a20s_i2c_readreg.exit421
  %105 = ptrtoint ptr %val.i423 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %val.i423, align 1
  %conv11.i440 = zext i8 %106 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i424) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i423) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i422)
  %107 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %error, align 4
  %or60 = or i32 %108, %conv11.i440
  store i32 %or60, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_post_ber, %if.then73)) #8
          to label %do.end79 [label %if.then73], !srcloc !240

if.then73:                                        ; preds = %mb86a20s_i2c_readreg.exit443
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %dev75 = getelementptr inbounds %struct.i2c_adapter, ptr %110, i32 0, i32 9
  %add76 = add nuw nsw i32 %layer, 65
  %111 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug309, ptr noundef %dev75, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.66, i32 noundef %add76, i32 noundef %112) #8
  br label %do.end79

do.end79:                                         ; preds = %if.then73, %mb86a20s_i2c_readreg.exit443
  %113 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %config, align 4
  %demod_address81 = getelementptr inbounds %struct.mb86a20s_config, ptr %114, i32 0, i32 1
  %115 = ptrtoint ptr %demod_address81 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %demod_address81, align 4
  %117 = shl nuw nsw i8 %34, 1
  %conv84 = add nuw nsw i8 %117, -36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i444) #8
  %118 = getelementptr inbounds [2 x i8], ptr %buf.i444, i32 0, i32 1
  %119 = ptrtoint ptr %buf.i444 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 80, ptr %buf.i444, align 1
  %120 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv84, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i445) #8
  %121 = getelementptr inbounds i8, ptr %msg.i445, i32 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 196607, ptr %121, align 4
  %conv.i446 = zext i8 %116 to i16
  %123 = ptrtoint ptr %msg.i445 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i446, ptr %msg.i445, align 4
  %flags.i447 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i445, i32 0, i32 1
  %124 = ptrtoint ptr %flags.i447 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %flags.i447, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i445, i32 0, i32 3
  %125 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %buf.i444, ptr %buf1.i, align 4
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %call.i449 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i445, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i449)
  %cmp.not.i450 = icmp eq i32 %call.i449, 1
  br i1 %cmp.not.i450, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i445) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i444) #8
  br label %if.end89

mb86a20s_i2c_writereg.exit:                       ; preds = %do.end79
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %dev.i451 = getelementptr inbounds %struct.i2c_adapter, ptr %129, i32 0, i32 9
  %conv5.i = zext i8 %conv84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i451, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i449, i32 noundef 80, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i445) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i444) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i449)
  %cmp86 = icmp slt i32 %call.i449, 0
  br i1 %cmp86, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end89_crit_edge

mb86a20s_i2c_writereg.exit.if.end89_crit_edge:    ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end89:                                         ; preds = %mb86a20s_i2c_writereg.exit.if.end89_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %130 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %config, align 4
  %demod_address91 = getelementptr inbounds %struct.mb86a20s_config, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %demod_address91 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %demod_address91, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i454)
  %134 = ptrtoint ptr %reg.addr.i454 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 81, ptr %reg.addr.i454, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i455) #8
  %135 = ptrtoint ptr %val.i455 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %val.i455, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i456) #8
  %136 = getelementptr inbounds i8, ptr %msg.i456, i32 4
  %137 = call ptr @memset(ptr %136, i32 255, i32 16)
  %conv.i457 = zext i8 %133 to i16
  %138 = ptrtoint ptr %msg.i456 to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %conv.i457, ptr %msg.i456, align 4
  %flags.i458 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 0, i32 1
  %139 = ptrtoint ptr %flags.i458 to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %flags.i458, align 2
  %140 = ptrtoint ptr %136 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 1, ptr %136, align 4
  %buf.i460 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 0, i32 3
  %141 = ptrtoint ptr %buf.i460 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %reg.addr.i454, ptr %buf.i460, align 4
  %arrayinit.element.i461 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 1
  %142 = ptrtoint ptr %arrayinit.element.i461 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i457, ptr %arrayinit.element.i461, align 4
  %flags3.i462 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 1, i32 1
  %143 = ptrtoint ptr %flags3.i462 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 1, ptr %flags3.i462, align 2
  %len4.i463 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 1, i32 2
  %144 = ptrtoint ptr %len4.i463 to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 1, ptr %len4.i463, align 4
  %buf5.i464 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i456, i32 1, i32 3
  %145 = ptrtoint ptr %buf5.i464 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %val.i455, ptr %buf5.i464, align 4
  %146 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %1, align 4
  %call.i465 = call i32 @i2c_transfer(ptr noundef %147, ptr noundef nonnull %msg.i456, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i465)
  %cmp.not.i466 = icmp eq i32 %call.i465, 2
  br i1 %cmp.not.i466, label %mb86a20s_i2c_readreg.exit475, label %do.end.i471

do.end.i471:                                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %dev.i467 = getelementptr inbounds %struct.i2c_adapter, ptr %149, i32 0, i32 9
  %150 = ptrtoint ptr %reg.addr.i454 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %reg.addr.i454, align 1
  %conv8.i468 = zext i8 %151 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i467, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i468, i32 noundef %call.i465) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i465)
  %cmp9.i469 = icmp slt i32 %call.i465, 0
  %spec.select500 = select i1 %cmp9.i469, i32 %call.i465, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i456) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i455) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i454)
  br label %cleanup

mb86a20s_i2c_readreg.exit475:                     ; preds = %if.end89
  %152 = ptrtoint ptr %val.i455 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %val.i455, align 1
  %conv11.i472 = zext i8 %153 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i456) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i455) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i454)
  %shl97 = shl nuw nsw i32 %conv11.i472, 8
  %154 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %config, align 4
  %demod_address99 = getelementptr inbounds %struct.mb86a20s_config, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %demod_address99 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %demod_address99, align 4
  %conv102 = add nuw nsw i8 %117, -35
  %call103 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %157, i8 noundef zeroext 80, i8 noundef zeroext %conv102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %mb86a20s_i2c_readreg.exit475.cleanup_crit_edge, label %if.end107

mb86a20s_i2c_readreg.exit475.cleanup_crit_edge:   ; preds = %mb86a20s_i2c_readreg.exit475
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end107:                                        ; preds = %mb86a20s_i2c_readreg.exit475
  %158 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %config, align 4
  %demod_address109 = getelementptr inbounds %struct.mb86a20s_config, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %demod_address109 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %demod_address109, align 4
  %call110 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %161, i8 noundef zeroext 81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end107.cleanup_crit_edge, label %if.end114

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end114:                                        ; preds = %if.end107
  %or115 = or i32 %call110, %shl97
  %mul117 = mul i32 %or115, 1632
  %162 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %mul117, ptr %count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_post_ber, %if.then130)) #8
          to label %do.end136 [label %if.then130], !srcloc !240

if.then130:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %dev132 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 9
  %add133 = add nuw nsw i32 %layer, 65
  %165 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug310, ptr noundef %dev132, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66, i32 noundef %add133, i32 noundef %166) #8
  br label %do.end136

do.end136:                                        ; preds = %if.then130, %if.end114
  %arrayidx = getelementptr %struct.mb86a20s_state, ptr %1, i32 0, i32 8, i32 %layer
  %167 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool137.not = icmp eq i32 %168, 0
  br i1 %tobool137.not, label %do.end136.reset_measurement_crit_edge, label %if.end139

do.end136.reset_measurement_crit_edge:            ; preds = %do.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_measurement

if.end139:                                        ; preds = %do.end136
  %div142 = udiv i32 %168, 1632
  %169 = call i32 @llvm.umax.i32(i32 %div142, i32 32)
  %170 = call i32 @llvm.umin.i32(i32 %169, i32 65535)
  call void @__sanitizer_cov_trace_cmp4(i32 %170, i32 %or115)
  %cmp151.not = icmp eq i32 %170, %or115
  br i1 %cmp151.not, label %if.end139.reset_measurement_crit_edge, label %do.body154

if.end139.reset_measurement_crit_edge:            ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_measurement

do.body154:                                       ; preds = %if.end139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_post_ber, %if.then166)) #8
          to label %do.end172 [label %if.then166], !srcloc !240

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 4
  %dev168 = getelementptr inbounds %struct.i2c_adapter, ptr %172, i32 0, i32 9
  %add169 = add nuw nsw i32 %layer, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug311, ptr noundef %dev168, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.66, i32 noundef %add169, i32 noundef %170) #8
  br label %do.end172

do.end172:                                        ; preds = %if.then166, %do.body154
  %173 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %config, align 4
  %demod_address174 = getelementptr inbounds %struct.mb86a20s_config, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %demod_address174 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %demod_address174, align 4
  %call175 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %176, i8 noundef zeroext 94, i8 noundef zeroext 0)
  %177 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %config, align 4
  %demod_address177 = getelementptr inbounds %struct.mb86a20s_config, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %demod_address177 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %demod_address177, align 4
  %call181 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %180, i8 noundef zeroext 80, i8 noundef zeroext %conv84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %do.end172.cleanup_crit_edge, label %if.end185

do.end172.cleanup_crit_edge:                      ; preds = %do.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end185:                                        ; preds = %do.end172
  %181 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %config, align 4
  %demod_address187 = getelementptr inbounds %struct.mb86a20s_config, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %demod_address187 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %demod_address187, align 4
  %shr = lshr i32 %170, 8
  %conv188 = trunc i32 %shr to i8
  %call189 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %184, i8 noundef zeroext 81, i8 noundef zeroext %conv188)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190 = icmp slt i32 %call189, 0
  br i1 %cmp190, label %if.end185.cleanup_crit_edge, label %if.end193

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end193:                                        ; preds = %if.end185
  %185 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %config, align 4
  %demod_address195 = getelementptr inbounds %struct.mb86a20s_config, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %demod_address195 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %demod_address195, align 4
  %call199 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %188, i8 noundef zeroext 80, i8 noundef zeroext %conv102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %cmp200 = icmp slt i32 %call199, 0
  br i1 %cmp200, label %if.end193.cleanup_crit_edge, label %if.end203

if.end193.cleanup_crit_edge:                      ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end203:                                        ; preds = %if.end193
  %189 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %config, align 4
  %demod_address205 = getelementptr inbounds %struct.mb86a20s_config, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %demod_address205 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %demod_address205, align 4
  %conv207 = trunc i32 %170 to i8
  %call208 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %192, i8 noundef zeroext 81, i8 noundef zeroext %conv207)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call208)
  %cmp209 = icmp slt i32 %call208, 0
  br i1 %cmp209, label %if.end203.cleanup_crit_edge, label %if.end212

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end212:                                        ; preds = %if.end203
  %193 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %config, align 4
  %demod_address214 = getelementptr inbounds %struct.mb86a20s_config, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %demod_address214 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %demod_address214, align 4
  %call215 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %196, i8 noundef zeroext 94, i8 noundef zeroext 7)
  %197 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %config, align 4
  %demod_address217 = getelementptr inbounds %struct.mb86a20s_config, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %demod_address217 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %demod_address217, align 4
  %call218 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %200, i8 noundef zeroext 95, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call218)
  %cmp219 = icmp slt i32 %call218, 0
  br i1 %cmp219, label %if.end212.cleanup_crit_edge, label %if.end222

if.end212.cleanup_crit_edge:                      ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end222:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %config, align 4
  %demod_address224 = getelementptr inbounds %struct.mb86a20s_config, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %demod_address224 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %demod_address224, align 4
  %call225 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %204, i8 noundef zeroext 95, i8 noundef zeroext 7)
  br label %cleanup

reset_measurement:                                ; preds = %if.end139.reset_measurement_crit_edge, %do.end136.reset_measurement_crit_edge
  %205 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %config, align 4
  %demod_address228 = getelementptr inbounds %struct.mb86a20s_config, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %demod_address228 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %demod_address228, align 4
  %call229 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %208, i8 noundef zeroext 95)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %reset_measurement.cleanup_crit_edge, label %if.end233

reset_measurement.cleanup_crit_edge:              ; preds = %reset_measurement
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end233:                                        ; preds = %reset_measurement
  %209 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %config, align 4
  %demod_address235 = getelementptr inbounds %struct.mb86a20s_config, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %demod_address235 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %demod_address235, align 4
  %neg = xor i32 %shl, -1
  %and237 = and i32 %call229, %neg
  %conv238 = trunc i32 %and237 to i8
  %call239 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %212, i8 noundef zeroext 95, i8 noundef zeroext %conv238)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %if.end233.cleanup_crit_edge, label %if.end243

if.end233.cleanup_crit_edge:                      ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end243:                                        ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %config, align 4
  %demod_address245 = getelementptr inbounds %struct.mb86a20s_config, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %demod_address245 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %demod_address245, align 4
  %or247 = or i32 %call229, %shl
  %conv248 = trunc i32 %or247 to i8
  %call249 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %216, i8 noundef zeroext 95, i8 noundef zeroext %conv248)
  br label %cleanup

cleanup:                                          ; preds = %if.end243, %if.end233.cleanup_crit_edge, %reset_measurement.cleanup_crit_edge, %if.end222, %if.end212.cleanup_crit_edge, %if.end203.cleanup_crit_edge, %if.end193.cleanup_crit_edge, %if.end185.cleanup_crit_edge, %do.end172.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %mb86a20s_i2c_readreg.exit475.cleanup_crit_edge, %do.end.i471, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %do.end.i439, %do.end.i417, %do.end.i395, %if.then23, %do.body11, %do.end.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call225, %if.end222 ], [ %call249, %if.end243 ], [ -22, %do.end.cleanup_crit_edge ], [ -16, %if.then23 ], [ %call.i449, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ], [ %call103, %mb86a20s_i2c_readreg.exit475.cleanup_crit_edge ], [ %call110, %if.end107.cleanup_crit_edge ], [ %call181, %do.end172.cleanup_crit_edge ], [ %call189, %if.end185.cleanup_crit_edge ], [ %call199, %if.end193.cleanup_crit_edge ], [ %call208, %if.end203.cleanup_crit_edge ], [ %call218, %if.end212.cleanup_crit_edge ], [ %call229, %reset_measurement.cleanup_crit_edge ], [ %call239, %if.end233.cleanup_crit_edge ], [ %spec.select, %do.end.i ], [ -16, %do.body11 ], [ %spec.select497, %do.end.i395 ], [ %spec.select498, %do.end.i417 ], [ %spec.select499, %do.end.i439 ], [ %spec.select500, %do.end.i471 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mb86a20s_get_blk_error(ptr nocapture noundef readonly %fe, i32 noundef %layer, ptr nocapture noundef %error, ptr nocapture noundef %count) unnamed_addr #0 align 64 {
entry:
  %reg.addr.i501 = alloca i8, align 1
  %val.i502 = alloca i8, align 1
  %msg.i503 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i488 = alloca [2 x i8], align 1
  %msg.i489 = alloca %struct.i2c_msg, align 4
  %reg.addr.i466 = alloca i8, align 1
  %val.i467 = alloca i8, align 1
  %msg.i468 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i454 = alloca [2 x i8], align 1
  %msg.i455 = alloca %struct.i2c_msg, align 4
  %reg.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  %msg.i444 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !240

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.71) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layer)
  %cmp = icmp ugt i32 %layer, 2
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %do.end
  %config = getelementptr inbounds %struct.mb86a20s_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %demod_address = getelementptr inbounds %struct.mb86a20s_config, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %demod_address to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %demod_address, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #8
  %8 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 80, ptr %buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -72, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 196607, ptr %11, align 4
  %conv.i = zext i8 %7 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %mb86a20s_i2c_writereg.exit.thread, label %mb86a20s_i2c_writereg.exit

mb86a20s_i2c_writereg.exit.thread:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  br label %if.end8

mb86a20s_i2c_writereg.exit:                       ; preds = %if.end4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i, i32 noundef 80, i32 noundef 184) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit.if.end8_crit_edge

mb86a20s_i2c_writereg.exit.if.end8_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

mb86a20s_i2c_writereg.exit.cleanup_crit_edge:     ; preds = %mb86a20s_i2c_writereg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %mb86a20s_i2c_writereg.exit.if.end8_crit_edge, %mb86a20s_i2c_writereg.exit.thread
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config, align 4
  %demod_address10 = getelementptr inbounds %struct.mb86a20s_config, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %demod_address10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %demod_address10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i)
  %24 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 81, ptr %reg.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #8
  %25 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %val.i, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i444) #8
  %26 = getelementptr inbounds i8, ptr %msg.i444, i32 4
  %27 = call ptr @memset(ptr %26, i32 255, i32 16)
  %conv.i445 = zext i8 %23 to i16
  %28 = ptrtoint ptr %msg.i444 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i445, ptr %msg.i444, align 4
  %flags.i446 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 0, i32 1
  %29 = ptrtoint ptr %flags.i446 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i446, align 2
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %26, align 4
  %buf.i448 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 0, i32 3
  %31 = ptrtoint ptr %buf.i448 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reg.addr.i, ptr %buf.i448, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 1
  %32 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i445, ptr %arrayinit.element.i, align 4
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 1, i32 1
  %33 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1, ptr %flags3.i, align 2
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 1, i32 2
  %34 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %len4.i, align 4
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i444, i32 1, i32 3
  %35 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %val.i, ptr %buf5.i, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i449 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i444, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i449)
  %cmp.not.i450 = icmp eq i32 %call.i449, 2
  br i1 %cmp.not.i450, label %mb86a20s_i2c_readreg.exit, label %do.end.i452

do.end.i452:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %dev.i451 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %reg.addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %reg.addr.i, align 1
  %conv8.i = zext i8 %41 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i451, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i, i32 noundef %call.i449) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i449)
  %cmp9.i = icmp slt i32 %call.i449, 0
  %spec.select = select i1 %cmp9.i, i32 %call.i449, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i444) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  br label %cleanup

mb86a20s_i2c_readreg.exit:                        ; preds = %if.end8
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %val.i, align 1
  %conv11.i = zext i8 %43 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i444) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i)
  %shl = shl nuw nsw i32 1, %layer
  %and = and i32 %shl, %conv11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %do.body17, label %if.end35

do.body17:                                        ; preds = %mb86a20s_i2c_readreg.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error, %if.then29)) #8
          to label %cleanup [label %if.then29], !srcloc !240

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %dev31 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 9
  %add = add nuw nsw i32 %layer, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug313, ptr noundef %dev31, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, i32 noundef %add) #8
  br label %cleanup

if.end35:                                         ; preds = %mb86a20s_i2c_readreg.exit
  %46 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %config, align 4
  %demod_address37 = getelementptr inbounds %struct.mb86a20s_config, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %demod_address37 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %demod_address37, align 4
  %layer.tr = trunc i32 %layer to i8
  %50 = shl nuw nsw i8 %layer.tr, 1
  %conv = add nuw nsw i8 %50, -71
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i454) #8
  %51 = getelementptr inbounds [2 x i8], ptr %buf.i454, i32 0, i32 1
  %52 = ptrtoint ptr %buf.i454 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 80, ptr %buf.i454, align 1
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv, ptr %51, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i455) #8
  %54 = getelementptr inbounds i8, ptr %msg.i455, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 196607, ptr %54, align 4
  %conv.i456 = zext i8 %49 to i16
  %56 = ptrtoint ptr %msg.i455 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv.i456, ptr %msg.i455, align 4
  %flags.i457 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i455, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i457 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %flags.i457, align 2
  %buf1.i459 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i455, i32 0, i32 3
  %58 = ptrtoint ptr %buf1.i459 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %buf.i454, ptr %buf1.i459, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %call.i460 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %msg.i455, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i460)
  %cmp.not.i461 = icmp eq i32 %call.i460, 1
  br i1 %cmp.not.i461, label %mb86a20s_i2c_writereg.exit465.thread, label %mb86a20s_i2c_writereg.exit465

mb86a20s_i2c_writereg.exit465.thread:             ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i455) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i454) #8
  br label %if.end43

mb86a20s_i2c_writereg.exit465:                    ; preds = %if.end35
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %dev.i462 = getelementptr inbounds %struct.i2c_adapter, ptr %62, i32 0, i32 9
  %conv5.i = zext i8 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i462, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i460, i32 noundef 80, i32 noundef %conv5.i) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i455) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i454) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i460)
  %cmp40 = icmp slt i32 %call.i460, 0
  br i1 %cmp40, label %mb86a20s_i2c_writereg.exit465.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit465.if.end43_crit_edge

mb86a20s_i2c_writereg.exit465.if.end43_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit465
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

mb86a20s_i2c_writereg.exit465.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit465
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %mb86a20s_i2c_writereg.exit465.if.end43_crit_edge, %mb86a20s_i2c_writereg.exit465.thread
  %63 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config, align 4
  %demod_address45 = getelementptr inbounds %struct.mb86a20s_config, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %demod_address45 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %demod_address45, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i466)
  %67 = ptrtoint ptr %reg.addr.i466 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 81, ptr %reg.addr.i466, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i467) #8
  %68 = ptrtoint ptr %val.i467 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %val.i467, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i468) #8
  %69 = getelementptr inbounds i8, ptr %msg.i468, i32 4
  %70 = call ptr @memset(ptr %69, i32 255, i32 16)
  %conv.i469 = zext i8 %66 to i16
  %71 = ptrtoint ptr %msg.i468 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i469, ptr %msg.i468, align 4
  %flags.i470 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 0, i32 1
  %72 = ptrtoint ptr %flags.i470 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %flags.i470, align 2
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 1, ptr %69, align 4
  %buf.i472 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 0, i32 3
  %74 = ptrtoint ptr %buf.i472 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %reg.addr.i466, ptr %buf.i472, align 4
  %arrayinit.element.i473 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 1
  %75 = ptrtoint ptr %arrayinit.element.i473 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv.i469, ptr %arrayinit.element.i473, align 4
  %flags3.i474 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 1, i32 1
  %76 = ptrtoint ptr %flags3.i474 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 1, ptr %flags3.i474, align 2
  %len4.i475 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 1, i32 2
  %77 = ptrtoint ptr %len4.i475 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 1, ptr %len4.i475, align 4
  %buf5.i476 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i468, i32 1, i32 3
  %78 = ptrtoint ptr %buf5.i476 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %val.i467, ptr %buf5.i476, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call.i477 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i468, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i477)
  %cmp.not.i478 = icmp eq i32 %call.i477, 2
  br i1 %cmp.not.i478, label %mb86a20s_i2c_readreg.exit487, label %do.end.i483

do.end.i483:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %dev.i479 = getelementptr inbounds %struct.i2c_adapter, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %reg.addr.i466 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %reg.addr.i466, align 1
  %conv8.i480 = zext i8 %84 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i479, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i480, i32 noundef %call.i477) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i477)
  %cmp9.i481 = icmp slt i32 %call.i477, 0
  %spec.select542 = select i1 %cmp9.i481, i32 %call.i477, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i468) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i467) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i466)
  br label %cleanup

mb86a20s_i2c_readreg.exit487:                     ; preds = %if.end43
  %85 = ptrtoint ptr %val.i467 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %val.i467, align 1
  %conv11.i484 = zext i8 %86 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i468) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i467) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i466)
  %shl51 = shl nuw nsw i32 %conv11.i484, 8
  %87 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %shl51, ptr %error, align 4
  %88 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %config, align 4
  %demod_address53 = getelementptr inbounds %struct.mb86a20s_config, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %demod_address53 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %demod_address53, align 4
  %conv56 = add nuw nsw i8 %50, -70
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i488) #8
  %92 = getelementptr inbounds [2 x i8], ptr %buf.i488, i32 0, i32 1
  %93 = ptrtoint ptr %buf.i488 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 80, ptr %buf.i488, align 1
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv56, ptr %92, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i489) #8
  %95 = getelementptr inbounds i8, ptr %msg.i489, i32 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 196607, ptr %95, align 4
  %conv.i490 = zext i8 %91 to i16
  %97 = ptrtoint ptr %msg.i489 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i490, ptr %msg.i489, align 4
  %flags.i491 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i489, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i491 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i491, align 2
  %buf1.i493 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i489, i32 0, i32 3
  %99 = ptrtoint ptr %buf1.i493 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i488, ptr %buf1.i493, align 4
  %100 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %1, align 4
  %call.i494 = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg.i489, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i494)
  %cmp.not.i495 = icmp eq i32 %call.i494, 1
  br i1 %cmp.not.i495, label %mb86a20s_i2c_writereg.exit500.thread, label %mb86a20s_i2c_writereg.exit500

mb86a20s_i2c_writereg.exit500.thread:             ; preds = %mb86a20s_i2c_readreg.exit487
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i489) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i488) #8
  br label %if.end61

mb86a20s_i2c_writereg.exit500:                    ; preds = %mb86a20s_i2c_readreg.exit487
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %dev.i496 = getelementptr inbounds %struct.i2c_adapter, ptr %103, i32 0, i32 9
  %conv5.i497 = zext i8 %conv56 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i496, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %call.i494, i32 noundef 80, i32 noundef %conv5.i497) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i489) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i488) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i494)
  %cmp58 = icmp slt i32 %call.i494, 0
  br i1 %cmp58, label %mb86a20s_i2c_writereg.exit500.cleanup_crit_edge, label %mb86a20s_i2c_writereg.exit500.if.end61_crit_edge

mb86a20s_i2c_writereg.exit500.if.end61_crit_edge: ; preds = %mb86a20s_i2c_writereg.exit500
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

mb86a20s_i2c_writereg.exit500.cleanup_crit_edge:  ; preds = %mb86a20s_i2c_writereg.exit500
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end61:                                         ; preds = %mb86a20s_i2c_writereg.exit500.if.end61_crit_edge, %mb86a20s_i2c_writereg.exit500.thread
  %104 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config, align 4
  %demod_address63 = getelementptr inbounds %struct.mb86a20s_config, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %demod_address63 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %demod_address63, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i501)
  %108 = ptrtoint ptr %reg.addr.i501 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 81, ptr %reg.addr.i501, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i502) #8
  %109 = ptrtoint ptr %val.i502 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -1, ptr %val.i502, align 1, !annotation !241
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i503) #8
  %110 = getelementptr inbounds i8, ptr %msg.i503, i32 4
  %111 = call ptr @memset(ptr %110, i32 255, i32 16)
  %conv.i504 = zext i8 %107 to i16
  %112 = ptrtoint ptr %msg.i503 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i504, ptr %msg.i503, align 4
  %flags.i505 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i503, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i505 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i505, align 2
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 1, ptr %110, align 4
  %buf.i507 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i503, i32 0, i32 3
  %115 = ptrtoint ptr %buf.i507 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %reg.addr.i501, ptr %buf.i507, align 4
  %arrayinit.element.i508 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i503, i32 1
  %116 = ptrtoint ptr %arrayinit.element.i508 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i504, ptr %arrayinit.element.i508, align 4
  %flags3.i509 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i503, i32 1, i32 1
  %117 = ptrtoint ptr %flags3.i509 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 1, ptr %flags3.i509, align 2
  %len4.i510 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i503, i32 1, i32 2
  %118 = ptrtoint ptr %len4.i510 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 1, ptr %len4.i510, align 4
  %buf5.i511 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i503, i32 1, i32 3
  %119 = ptrtoint ptr %buf5.i511 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %val.i502, ptr %buf5.i511, align 4
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %1, align 4
  %call.i512 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i503, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i512)
  %cmp.not.i513 = icmp eq i32 %call.i512, 2
  br i1 %cmp.not.i513, label %mb86a20s_i2c_readreg.exit522, label %do.end.i518

do.end.i518:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %1, align 4
  %dev.i514 = getelementptr inbounds %struct.i2c_adapter, ptr %123, i32 0, i32 9
  %124 = ptrtoint ptr %reg.addr.i501 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %reg.addr.i501, align 1
  %conv8.i515 = zext i8 %125 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i514, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv8.i515, i32 noundef %call.i512) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i512)
  %cmp9.i516 = icmp slt i32 %call.i512, 0
  %spec.select543 = select i1 %cmp9.i516, i32 %call.i512, i32 -5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i503) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i502) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i501)
  br label %cleanup

mb86a20s_i2c_readreg.exit522:                     ; preds = %if.end61
  %126 = ptrtoint ptr %val.i502 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %val.i502, align 1
  %conv11.i519 = zext i8 %127 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i503) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i502) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i501)
  %128 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %error, align 4
  %or = or i32 %129, %conv11.i519
  store i32 %or, ptr %error, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error, %if.then81)) #8
          to label %do.end87 [label %if.then81], !srcloc !240

if.then81:                                        ; preds = %mb86a20s_i2c_readreg.exit522
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %dev83 = getelementptr inbounds %struct.i2c_adapter, ptr %131, i32 0, i32 9
  %add84 = add nuw nsw i32 %layer, 65
  %132 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %error, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug314, ptr noundef %dev83, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef %add84, i32 noundef %133) #8
  br label %do.end87

do.end87:                                         ; preds = %if.then81, %mb86a20s_i2c_readreg.exit522
  %134 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %config, align 4
  %demod_address89 = getelementptr inbounds %struct.mb86a20s_config, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %demod_address89 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %demod_address89, align 4
  %conv92 = add nuw nsw i8 %50, -78
  %call93 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %137, i8 noundef zeroext 80, i8 noundef zeroext %conv92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end87.cleanup_crit_edge, label %if.end97

do.end87.cleanup_crit_edge:                       ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %do.end87
  %138 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %config, align 4
  %demod_address99 = getelementptr inbounds %struct.mb86a20s_config, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %demod_address99 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %demod_address99, align 4
  %call100 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %141, i8 noundef zeroext 81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end97.cleanup_crit_edge, label %if.end104

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end104:                                        ; preds = %if.end97
  %shl105 = shl i32 %call100, 8
  %142 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %shl105, ptr %count, align 4
  %143 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %config, align 4
  %demod_address107 = getelementptr inbounds %struct.mb86a20s_config, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %demod_address107 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %demod_address107, align 4
  %conv110 = add nuw nsw i8 %50, -77
  %call111 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %146, i8 noundef zeroext 80, i8 noundef zeroext %conv110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.end104.cleanup_crit_edge, label %if.end115

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end115:                                        ; preds = %if.end104
  %147 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %config, align 4
  %demod_address117 = getelementptr inbounds %struct.mb86a20s_config, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %demod_address117 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %demod_address117, align 4
  %call118 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %150, i8 noundef zeroext 81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.end115.cleanup_crit_edge, label %if.end122

if.end115.cleanup_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end122:                                        ; preds = %if.end115
  %151 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %count, align 4
  %or123 = or i32 %152, %call118
  store i32 %or123, ptr %count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error, %if.then136)) #8
          to label %do.end142 [label %if.then136], !srcloc !240

if.then136:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %1, align 4
  %dev138 = getelementptr inbounds %struct.i2c_adapter, ptr %154, i32 0, i32 9
  %add139 = add nuw nsw i32 %layer, 65
  %155 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %count, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug315, ptr noundef %dev138, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.71, i32 noundef %add139, i32 noundef %156) #8
  br label %do.end142

do.end142:                                        ; preds = %if.then136, %if.end122
  %arrayidx = getelementptr %struct.mb86a20s_state, ptr %1, i32 0, i32 8, i32 %layer
  %157 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool143.not = icmp eq i32 %158, 0
  br i1 %tobool143.not, label %do.end142.reset_measurement_crit_edge, label %if.end145

do.end142.reset_measurement_crit_edge:            ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_measurement

if.end145:                                        ; preds = %do.end142
  %div148 = udiv i32 %158, 1632
  %159 = call i32 @llvm.umax.i32(i32 %div148, i32 32)
  %160 = call i32 @llvm.umin.i32(i32 %159, i32 65535)
  %161 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp157.not = icmp eq i32 %160, %162
  br i1 %cmp157.not, label %if.end145.reset_measurement_crit_edge, label %do.body160

if.end145.reset_measurement_crit_edge:            ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_measurement

do.body160:                                       ; preds = %if.end145
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mb86a20s_get_blk_error, %if.then172)) #8
          to label %do.end178 [label %if.then172], !srcloc !240

if.then172:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %1, align 4
  %dev174 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 9
  %add175 = add nuw nsw i32 %layer, 65
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug316, ptr noundef %dev174, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.71, i32 noundef %add175, i32 noundef %160) #8
  br label %do.end178

do.end178:                                        ; preds = %if.then172, %do.body160
  %165 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %config, align 4
  %demod_address180 = getelementptr inbounds %struct.mb86a20s_config, ptr %166, i32 0, i32 1
  %167 = ptrtoint ptr %demod_address180 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %demod_address180, align 4
  %call181 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %168, i8 noundef zeroext 80, i8 noundef zeroext -80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %cmp182 = icmp slt i32 %call181, 0
  br i1 %cmp182, label %do.end178.cleanup_crit_edge, label %if.end185

do.end178.cleanup_crit_edge:                      ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end185:                                        ; preds = %do.end178
  %169 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %config, align 4
  %demod_address187 = getelementptr inbounds %struct.mb86a20s_config, ptr %170, i32 0, i32 1
  %171 = ptrtoint ptr %demod_address187 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %demod_address187, align 4
  %call188 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %172, i8 noundef zeroext 81, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %cmp189 = icmp slt i32 %call188, 0
  br i1 %cmp189, label %if.end185.cleanup_crit_edge, label %if.end192

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end192:                                        ; preds = %if.end185
  %173 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %config, align 4
  %demod_address194 = getelementptr inbounds %struct.mb86a20s_config, ptr %174, i32 0, i32 1
  %175 = ptrtoint ptr %demod_address194 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %demod_address194, align 4
  %call198 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %176, i8 noundef zeroext 80, i8 noundef zeroext %conv92)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199 = icmp slt i32 %call198, 0
  br i1 %cmp199, label %if.end192.cleanup_crit_edge, label %if.end202

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end202:                                        ; preds = %if.end192
  %177 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %config, align 4
  %demod_address204 = getelementptr inbounds %struct.mb86a20s_config, ptr %178, i32 0, i32 1
  %179 = ptrtoint ptr %demod_address204 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %demod_address204, align 4
  %shr = lshr i32 %160, 8
  %conv205 = trunc i32 %shr to i8
  %call206 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %180, i8 noundef zeroext 81, i8 noundef zeroext %conv205)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %if.end202.cleanup_crit_edge, label %if.end210

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end210:                                        ; preds = %if.end202
  %181 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %config, align 4
  %demod_address212 = getelementptr inbounds %struct.mb86a20s_config, ptr %182, i32 0, i32 1
  %183 = ptrtoint ptr %demod_address212 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %demod_address212, align 4
  %call216 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %184, i8 noundef zeroext 80, i8 noundef zeroext %conv110)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.end210.cleanup_crit_edge, label %if.end220

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end220:                                        ; preds = %if.end210
  %185 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %config, align 4
  %demod_address222 = getelementptr inbounds %struct.mb86a20s_config, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %demod_address222 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %demod_address222, align 4
  %conv224 = trunc i32 %160 to i8
  %call225 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %188, i8 noundef zeroext 81, i8 noundef zeroext %conv224)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225)
  %cmp226 = icmp slt i32 %call225, 0
  br i1 %cmp226, label %if.end220.cleanup_crit_edge, label %if.end229

if.end220.cleanup_crit_edge:                      ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end229:                                        ; preds = %if.end220
  %189 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %config, align 4
  %demod_address231 = getelementptr inbounds %struct.mb86a20s_config, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %demod_address231 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %demod_address231, align 4
  %call232 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %192, i8 noundef zeroext 80, i8 noundef zeroext -80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %cmp233 = icmp slt i32 %call232, 0
  br i1 %cmp233, label %if.end229.cleanup_crit_edge, label %if.end236

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end236:                                        ; preds = %if.end229
  %193 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %config, align 4
  %demod_address238 = getelementptr inbounds %struct.mb86a20s_config, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %demod_address238 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %demod_address238, align 4
  %call239 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %196, i8 noundef zeroext 81, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call239)
  %cmp240 = icmp slt i32 %call239, 0
  br i1 %cmp240, label %if.end236.cleanup_crit_edge, label %if.end243

if.end236.cleanup_crit_edge:                      ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end243:                                        ; preds = %if.end236
  %197 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %config, align 4
  %demod_address245 = getelementptr inbounds %struct.mb86a20s_config, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %demod_address245 to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %demod_address245, align 4
  %call246 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %200, i8 noundef zeroext 80, i8 noundef zeroext -79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %cmp247 = icmp slt i32 %call246, 0
  br i1 %cmp247, label %if.end243.cleanup_crit_edge, label %if.end250

if.end243.cleanup_crit_edge:                      ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end250:                                        ; preds = %if.end243
  %201 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %config, align 4
  %demod_address252 = getelementptr inbounds %struct.mb86a20s_config, ptr %202, i32 0, i32 1
  %203 = ptrtoint ptr %demod_address252 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %demod_address252, align 4
  %call253 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %204, i8 noundef zeroext 81, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call253)
  %cmp254 = icmp slt i32 %call253, 0
  br i1 %cmp254, label %if.end250.cleanup_crit_edge, label %if.end257

if.end250.cleanup_crit_edge:                      ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end257:                                        ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  %205 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %config, align 4
  %demod_address259 = getelementptr inbounds %struct.mb86a20s_config, ptr %206, i32 0, i32 1
  %207 = ptrtoint ptr %demod_address259 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %demod_address259, align 4
  %call260 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %208, i8 noundef zeroext 81, i8 noundef zeroext 0)
  br label %cleanup

reset_measurement:                                ; preds = %if.end145.reset_measurement_crit_edge, %do.end142.reset_measurement_crit_edge
  %209 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %config, align 4
  %demod_address263 = getelementptr inbounds %struct.mb86a20s_config, ptr %210, i32 0, i32 1
  %211 = ptrtoint ptr %demod_address263 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %demod_address263, align 4
  %call264 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %212, i8 noundef zeroext 80, i8 noundef zeroext -79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call264)
  %cmp265 = icmp slt i32 %call264, 0
  br i1 %cmp265, label %reset_measurement.cleanup_crit_edge, label %if.end268

reset_measurement.cleanup_crit_edge:              ; preds = %reset_measurement
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end268:                                        ; preds = %reset_measurement
  %213 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %config, align 4
  %demod_address270 = getelementptr inbounds %struct.mb86a20s_config, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %demod_address270 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %demod_address270, align 4
  %call271 = call fastcc i32 @mb86a20s_i2c_readreg(ptr noundef %1, i8 noundef zeroext %216, i8 noundef zeroext 81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %cmp272 = icmp slt i32 %call271, 0
  br i1 %cmp272, label %if.end268.cleanup_crit_edge, label %if.end275

if.end268.cleanup_crit_edge:                      ; preds = %if.end268
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end275:                                        ; preds = %if.end268
  %217 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %config, align 4
  %demod_address277 = getelementptr inbounds %struct.mb86a20s_config, ptr %218, i32 0, i32 1
  %219 = ptrtoint ptr %demod_address277 to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %demod_address277, align 4
  %or279 = or i32 %call271, %shl
  %conv280 = trunc i32 %or279 to i8
  %call281 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %220, i8 noundef zeroext 81, i8 noundef zeroext %conv280)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %cmp282 = icmp slt i32 %call281, 0
  br i1 %cmp282, label %if.end275.cleanup_crit_edge, label %if.end285

if.end275.cleanup_crit_edge:                      ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end285:                                        ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  %221 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %config, align 4
  %demod_address287 = getelementptr inbounds %struct.mb86a20s_config, ptr %222, i32 0, i32 1
  %223 = ptrtoint ptr %demod_address287 to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %demod_address287, align 4
  %neg = xor i32 %shl, -1
  %and289 = and i32 %call271, %neg
  %conv290 = trunc i32 %and289 to i8
  %call291 = call fastcc i32 @mb86a20s_i2c_writereg(ptr noundef %1, i8 noundef zeroext %224, i8 noundef zeroext 81, i8 noundef zeroext %conv290)
  br label %cleanup

cleanup:                                          ; preds = %if.end285, %if.end275.cleanup_crit_edge, %if.end268.cleanup_crit_edge, %reset_measurement.cleanup_crit_edge, %if.end257, %if.end250.cleanup_crit_edge, %if.end243.cleanup_crit_edge, %if.end236.cleanup_crit_edge, %if.end229.cleanup_crit_edge, %if.end220.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end192.cleanup_crit_edge, %if.end185.cleanup_crit_edge, %do.end178.cleanup_crit_edge, %if.end115.cleanup_crit_edge, %if.end104.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %do.end87.cleanup_crit_edge, %do.end.i518, %mb86a20s_i2c_writereg.exit500.cleanup_crit_edge, %do.end.i483, %mb86a20s_i2c_writereg.exit465.cleanup_crit_edge, %if.then29, %do.body17, %do.end.i452, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call260, %if.end257 ], [ %call291, %if.end285 ], [ -22, %do.end.cleanup_crit_edge ], [ %call.i, %mb86a20s_i2c_writereg.exit.cleanup_crit_edge ], [ -16, %if.then29 ], [ %call.i460, %mb86a20s_i2c_writereg.exit465.cleanup_crit_edge ], [ %call.i494, %mb86a20s_i2c_writereg.exit500.cleanup_crit_edge ], [ %call93, %do.end87.cleanup_crit_edge ], [ %call100, %if.end97.cleanup_crit_edge ], [ %call111, %if.end104.cleanup_crit_edge ], [ %call118, %if.end115.cleanup_crit_edge ], [ %call181, %do.end178.cleanup_crit_edge ], [ %call188, %if.end185.cleanup_crit_edge ], [ %call198, %if.end192.cleanup_crit_edge ], [ %call206, %if.end202.cleanup_crit_edge ], [ %call216, %if.end210.cleanup_crit_edge ], [ %call225, %if.end220.cleanup_crit_edge ], [ %call232, %if.end229.cleanup_crit_edge ], [ %call239, %if.end236.cleanup_crit_edge ], [ %call246, %if.end243.cleanup_crit_edge ], [ %call253, %if.end250.cleanup_crit_edge ], [ %call264, %reset_measurement.cleanup_crit_edge ], [ %call271, %if.end268.cleanup_crit_edge ], [ %call281, %if.end275.cleanup_crit_edge ], [ %spec.select, %do.end.i452 ], [ -16, %do.body17 ], [ %spec.select542, %do.end.i483 ], [ %spec.select543, %do.end.i518 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !58, !60, !62, !63, !65, !66, !68, !70, !72, !73, !75, !76, !77, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !134, !135, !137, !138, !140, !142, !144, !146, !148, !150, !151, !153, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !171, !173, !174, !176, !177, !179, !180, !182, !184, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2055, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mb86a20s_attach.__UNIQUE_ID_ddebug332, !1, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2075, i32 3}
!8 = !{ptr @mb86a20s_attach.__UNIQUE_ID_ddebug333, !7, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2081, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mb86a20s_attach._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @mb86a20s_attach._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_mb86a20s_attach, !16, !"__ksymtab_mb86a20s_attach", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2084, i32 1}
!17 = !{ptr @__UNIQUE_ID_description334, !18, !"__UNIQUE_ID_description334", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2113, i32 1}
!19 = !{ptr @__UNIQUE_ID_author335, !20, !"__UNIQUE_ID_author335", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2114, i32 1}
!21 = !{ptr @__UNIQUE_ID_file336, !22, !"__UNIQUE_ID_file336", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2115, i32 1}
!23 = !{ptr @__UNIQUE_ID_license337, !22, !"__UNIQUE_ID_license337", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 259, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mb86a20s_i2c_readreg._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mb86a20s_i2c_readreg._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mb86a20s_ops, !31, !"mb86a20s_ops", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2086, i32 38}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2037, i32 2}
!34 = !{ptr @mb86a20s_release.__UNIQUE_ID_ddebug331, !33, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1752, i32 2}
!37 = !{ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug324, !36, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1809, i32 2}
!40 = !{ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug325, !39, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1827, i32 2}
!43 = !{ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug326, !42, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1851, i32 3}
!46 = !{ptr @mb86a20s_initfe._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mb86a20s_initfe._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1855, i32 3}
!50 = !{ptr @mb86a20s_initfe.__UNIQUE_ID_ddebug327, !49, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!51 = distinct !{null, !52, !"mb86a20s_init1", i1 false, i1 false}
!52 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 58, i32 23}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 223, i32 3}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mb86a20s_i2c_writereg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @mb86a20s_i2c_writereg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mb86a20s_init2, !59, !"mb86a20s_init2", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 65, i32 23}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 2022, i32 2}
!62 = !{ptr @mb86a20s_tune.__UNIQUE_ID_ddebug330, !61, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1865, i32 2}
!65 = !{ptr @mb86a20s_set_frontend.__UNIQUE_ID_ddebug328, !64, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!66 = !{ptr @mb86a20s_subchannel, !67, !"mb86a20s_subchannel", i1 false, i1 false}
!67 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 24, i32 11}
!68 = distinct !{null, !69, !"mb86a20s_reset_reception", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 189, i32 23}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 734, i32 2}
!72 = !{ptr @mb86a20s_reset_counters.__UNIQUE_ID_ddebug301, !71, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 785, i32 2}
!75 = !{ptr @mb86a20s_reset_counters._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @mb86a20s_reset_counters._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mb86a20s_per_ber_reset, !78, !"mb86a20s_per_ber_reset", i1 false, i1 false}
!78 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 196, i32 23}
!79 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1530, i32 2}
!81 = !{ptr @mb86a20s_stats_not_ready.__UNIQUE_ID_ddebug322, !80, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1940, i32 2}
!84 = !{ptr @mb86a20s_read_status_and_stats.__UNIQUE_ID_ddebug329, !83, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1952, i32 3}
!87 = !{ptr @mb86a20s_read_status_and_stats._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @mb86a20s_read_status_and_stats._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1961, i32 3}
!91 = !{ptr @mb86a20s_read_status_and_stats._entry.26, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mb86a20s_read_status_and_stats._entry_ptr.28, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1974, i32 4}
!95 = !{ptr @mb86a20s_read_status_and_stats._entry.29, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @mb86a20s_read_status_and_stats._entry_ptr.31, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.33, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1983, i32 4}
!99 = !{ptr @mb86a20s_read_status_and_stats._entry.32, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @mb86a20s_read_status_and_stats._entry_ptr.34, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 312, i32 2}
!103 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @mb86a20s_read_status.__UNIQUE_ID_ddebug290, !102, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 502, i32 2}
!107 = !{ptr @mb86a20s_reset_frontend_cache.__UNIQUE_ID_ddebug294, !106, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 365, i32 4}
!110 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @mb86a20s_read_signal_strength.__UNIQUE_ID_ddebug291, !109, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 611, i32 2}
!114 = !{ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug295, !113, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 628, i32 3}
!117 = !{ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug296, !116, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!118 = !{ptr @.str.42, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 645, i32 3}
!120 = !{ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug297, !119, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 651, i32 3}
!123 = !{ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug298, !122, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 657, i32 3}
!126 = !{ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug299, !125, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 670, i32 3}
!129 = !{ptr @mb86a20s_get_frontend.__UNIQUE_ID_ddebug300, !128, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!130 = !{ptr @mb86a20s_get_segment_count.reg, !131, !"reg", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 473, i32 23}
!132 = !{ptr @.str.46, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 479, i32 2}
!134 = !{ptr @mb86a20s_get_segment_count.__UNIQUE_ID_ddebug292, !133, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!135 = !{ptr @.str.47, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 492, i32 2}
!137 = !{ptr @mb86a20s_get_segment_count.__UNIQUE_ID_ddebug293, !136, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!138 = !{ptr @mb86a20s_get_modulation.reg, !139, !"reg", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 380, i32 23}
!140 = !{ptr @mb86a20s_get_fec.reg, !141, !"reg", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 413, i32 23}
!142 = !{ptr @mb86a20s_get_interleaving.interleaving, !143, !"interleaving", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 447, i32 19}
!144 = !{ptr @mb86a20s_get_interleaving.reg, !145, !"reg", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 451, i32 29}
!146 = !{ptr @isdbt_rate, !147, !"isdbt_rate", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 520, i32 18}
!148 = !{ptr @.str.48, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1575, i32 2}
!150 = !{ptr @mb86a20s_get_stats.__UNIQUE_ID_ddebug323, !149, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!151 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1610, i32 5}
!153 = !{ptr @mb86a20s_get_stats._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @mb86a20s_get_stats._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @mb86a20s_get_stats._entry.50, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1632, i32 5}
!157 = !{ptr @mb86a20s_get_stats._entry_ptr.51, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1655, i32 5}
!160 = !{ptr @mb86a20s_get_stats._entry.52, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mb86a20s_get_stats._entry_ptr.54, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.55, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1388, i32 3}
!164 = !{ptr @.str.56, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug317, !163, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!166 = !{ptr @.str.57, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1410, i32 2}
!168 = !{ptr @mb86a20s_get_main_CNR.__UNIQUE_ID_ddebug318, !167, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!169 = !{ptr @cnr_to_db_table, !170, !"cnr_to_db_table", i1 false, i1 false}
!170 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1208, i32 37}
!171 = !{ptr @.str.58, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1431, i32 2}
!173 = !{ptr @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug319, !172, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!174 = !{ptr @.str.59, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1443, i32 3}
!176 = !{ptr @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug320, !175, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!177 = !{ptr @.str.60, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1498, i32 3}
!179 = !{ptr @mb86a20s_get_blk_error_layer_CNR.__UNIQUE_ID_ddebug321, !178, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!180 = !{ptr @cnr_qpsk_table, !181, !"cnr_qpsk_table", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1310, i32 37}
!182 = !{ptr @cnr_16qam_table, !183, !"cnr_16qam_table", i1 false, i1 false}
!183 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1276, i32 37}
!184 = !{ptr @cnr_64qam_table, !185, !"cnr_64qam_table", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1242, i32 37}
!186 = !{ptr @.str.61, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 799, i32 2}
!188 = !{ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug302, !187, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!189 = !{ptr @.str.62, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 811, i32 3}
!191 = !{ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug303, !190, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!192 = !{ptr @.str.63, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 831, i32 2}
!194 = !{ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug304, !193, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!195 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 858, i32 2}
!197 = !{ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug305, !196, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!198 = !{ptr @.str.65, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 872, i32 3}
!200 = !{ptr @mb86a20s_get_pre_ber.__UNIQUE_ID_ddebug306, !199, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!201 = !{ptr @.str.66, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 933, i32 2}
!203 = !{ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug307, !202, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!204 = !{ptr @.str.67, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 945, i32 3}
!206 = !{ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug308, !205, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!207 = !{ptr @.str.68, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 965, i32 2}
!209 = !{ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug309, !208, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!210 = !{ptr @.str.69, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 986, i32 2}
!212 = !{ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug310, !211, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!213 = !{ptr @.str.70, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1006, i32 3}
!215 = !{ptr @mb86a20s_get_post_ber.__UNIQUE_ID_ddebug311, !214, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!216 = !{ptr @.str.71, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1060, i32 2}
!218 = !{ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug312, !217, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!219 = !{ptr @.str.72, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1076, i32 3}
!221 = !{ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug313, !220, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!222 = !{ptr @.str.73, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1097, i32 2}
!224 = !{ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug314, !223, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!225 = !{ptr @.str.74, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1116, i32 2}
!227 = !{ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug315, !226, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!228 = !{ptr @.str.75, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/dvb-frontends/mb86a20s.c", i32 1137, i32 3}
!230 = !{ptr @mb86a20s_get_blk_error.__UNIQUE_ID_ddebug316, !229, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i64 2148743090, i64 2148743095, i64 2148743108, i64 2148743152, i64 2148743186, i64 2148743207}
!241 = !{!"auto-init"}
!242 = !{i8 0, i8 2}
!243 = !{!"branch_weights", i32 2000, i32 1}
!244 = !{i64 2148651809, i64 2148652089, i64 2148652423, i64 2148652757}
!245 = !{i64 1165978, i64 1166005}
!246 = !{i64 1166673, i64 1166700, i64 1166733, i64 1166754, i64 1166781, i64 1166807}
