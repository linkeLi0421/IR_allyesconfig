; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2820r_t2.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_t2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.reg_val_mask = type { i32, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.cxd2820r_priv = type { [2 x ptr], [2 x ptr], ptr, %struct.dvb_frontend, i8, i8, i8, i8, i64, i64, i8, [3 x i8], %struct.gpio_chip, i32, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.91, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.91 = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }

@__const.cxd2820r_set_frontend_t2.bw_params1 = private unnamed_addr constant [4 x [5 x i8]] [[5 x i8] c"\1C\B3333", [5 x i8] c"\17\EA\AA\AA\AA", [5 x i8] c"\14\80\00\00\00", [5 x i8] c"\11\F0\00\00\00"], align 1
@cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxd2820r\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxd2820r_set_frontend_t2\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/cxd2820r_t2.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"delivery_system=%d modulation=%d frequency=%u bandwidth_hz=%u inversion=%d stream_id=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_frequency=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disable PLP filtering\0A\00", [41 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enable PLP filtering\0A\00", [42 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cxd2820r_get_frontend_t2\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.7, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_read_status_t2.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2820r_read_status_t2\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"status=%02x raw=%*ph sync=%u ts=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@cxd2820r_read_status_t2.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_sleep_t2.tab = internal constant { [6 x %struct.reg_val_mask], [48 x i8] } { [6 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i8 31, i8 -1 }, %struct.reg_val_mask { i32 133, i8 0, i8 -1 }, %struct.reg_val_mask { i32 136, i8 1, i8 -1 }, %struct.reg_val_mask { i32 8297, i8 0, i8 -1 }, %struct.reg_val_mask { i32 129, i8 0, i8 -1 }, %struct.reg_val_mask { i32 128, i8 0, i8 -1 }], [48 x i8] zeroinitializer }, align 32
@cxd2820r_sleep_t2.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.9, i8 0, i8 99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cxd2820r_sleep_t2\00", [46 x i8] zeroinitializer }, align 32
@cxd2820r_sleep_t2.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.7, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@switch.table.cxd2820r_get_frontend_t2 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 3, i32 4, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@switch.table.cxd2820r_get_frontend_t2.13 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], [36 x i8] zeroinitializer }, align 32
@switch.table.cxd2820r_get_frontend_t2.14 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 10, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@switch.table.cxd2820r_get_frontend_t2.15 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 5], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5000000, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 60, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 103, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 119, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 124, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 151, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 165, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 302, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 389, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [45 x i8] c"../drivers/media/dvb-frontends/cxd2820r_t2.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 398, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [38 x i8] c"switch.table.cxd2820r_get_frontend_t2\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [41 x i8] c"switch.table.cxd2820r_get_frontend_t2.13\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [41 x i8] c"switch.table.cxd2820r_get_frontend_t2.14\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [41 x i8] c"switch.table.cxd2820r_get_frontend_t2.15\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cxd2820r_sleep_t2.tab, ptr @.str.12, ptr @switch.table.cxd2820r_get_frontend_t2, ptr @switch.table.cxd2820r_get_frontend_t2.13, ptr @switch.table.cxd2820r_get_frontend_t2.14, ptr @switch.table.cxd2820r_get_frontend_t2.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_sleep_t2.tab to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t2.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t2.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t2.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_set_frontend_t2(ptr noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %if_frequency = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  %bw_params1 = alloca [4 x [5 x i8]], align 1
  %tab = alloca [30 x %struct.reg_val_mask], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #4
  %4 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %if_frequency, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !46
  %6 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !46
  %8 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !46
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %bw_params1) #4
  %10 = call ptr @memcpy(ptr %bw_params1, ptr @__const.cxd2820r_set_frontend_t2.bw_params1, i32 20)
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %tab) #4
  %11 = getelementptr inbounds i8, ptr %tab, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 236)
  %13 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %tab, align 4
  %val = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 1
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %val, align 4
  %arrayinit.element = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1
  %15 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 129, ptr %arrayinit.element, align 4
  %val3 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 1
  %16 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 32, ptr %val3, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2
  %17 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 133, ptr %arrayinit.element5, align 4
  %val7 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 1
  %18 = ptrtoint ptr %val7 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %val7, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3
  %19 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 136, ptr %arrayinit.element9, align 4
  %val11 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 1
  %20 = ptrtoint ptr %val11 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %val11, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4
  %21 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8297, ptr %arrayinit.element13, align 4
  %val15 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 1
  %22 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %val15, align 4
  %arrayinit.element17 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5
  %23 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 8319, ptr %arrayinit.element17, align 4
  %val19 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 1
  %24 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 42, ptr %val19, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6
  %25 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8322, ptr %arrayinit.element21, align 4
  %val23 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 1
  %26 = ptrtoint ptr %val23 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %val23, align 4
  %arrayinit.element25 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7
  %27 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8323, ptr %arrayinit.element25, align 4
  %val27 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 1
  %28 = ptrtoint ptr %val27 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 10, ptr %val27, align 4
  %arrayinit.element29 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8
  %29 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 8395, ptr %arrayinit.element29, align 4
  %val31 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 1
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 6
  %30 = ptrtoint ptr %if_agc_polarity to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %if_agc_polarity, align 2, !range !47
  %32 = shl nuw nsw i8 %31, 6
  %33 = ptrtoint ptr %val31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %val31, align 4
  %mask33 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 2
  %34 = ptrtoint ptr %mask33 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 64, ptr %mask33, align 1
  %arrayinit.element34 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9
  %35 = ptrtoint ptr %arrayinit.element34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8304, ptr %arrayinit.element34, align 4
  %val36 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 1
  %ts_mode = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %ts_mode, align 4
  %38 = ptrtoint ptr %val36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %val36, align 4
  %arrayinit.element38 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10
  %39 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8305, ptr %arrayinit.element38, align 4
  %val40 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 1
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %ts_clk_inv to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ts_clk_inv, align 1, !range !47
  %42 = shl nuw nsw i8 %41, 6
  %43 = xor i8 %42, 64
  %44 = ptrtoint ptr %val40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %val40, align 4
  %mask44 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 2
  %45 = ptrtoint ptr %mask44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 64, ptr %mask44, align 1
  %arrayinit.element45 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11
  %46 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 8373, ptr %arrayinit.element45, align 4
  %val47 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 1
  %spec_inv = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %spec_inv to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %spec_inv, align 1, !range !47
  %49 = shl nuw nsw i8 %48, 4
  %50 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %val47, align 4
  %mask52 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 2
  %51 = ptrtoint ptr %mask52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 16, ptr %mask52, align 1
  %arrayinit.element53 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12
  %52 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 9575, ptr %arrayinit.element53, align 4
  %val55 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 1
  %53 = ptrtoint ptr %val55 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 7, ptr %val55, align 4
  %mask56 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 2
  %54 = ptrtoint ptr %mask56 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 15, ptr %mask56, align 1
  %arrayinit.element57 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13
  %55 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 9577, ptr %arrayinit.element57, align 4
  %val59 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 1
  %56 = ptrtoint ptr %val59 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %val59, align 4
  %mask60 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 2
  %57 = ptrtoint ptr %mask60 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %mask60, align 1
  %arrayinit.element61 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14
  %58 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 9621, ptr %arrayinit.element61, align 4
  %val63 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 14, i32 1
  %59 = ptrtoint ptr %val63 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 26, ptr %val63, align 4
  %arrayinit.element65 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15
  %60 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 9622, ptr %arrayinit.element65, align 4
  %val67 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 15, i32 1
  %61 = ptrtoint ptr %val67 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 80, ptr %val67, align 4
  %arrayinit.element69 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16
  %62 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 10892, ptr %arrayinit.element69, align 4
  %val71 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 16, i32 1
  %63 = ptrtoint ptr %val71 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %val71, align 4
  %arrayinit.element73 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17
  %64 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 10893, ptr %arrayinit.element73, align 4
  %val75 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 17, i32 1
  %65 = ptrtoint ptr %val75 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 52, ptr %val75, align 4
  %arrayinit.element77 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18
  %66 = ptrtoint ptr %arrayinit.element77 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 10821, ptr %arrayinit.element77, align 4
  %val79 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18, i32 1
  %67 = ptrtoint ptr %val79 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 6, ptr %val79, align 4
  %mask80 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 18, i32 2
  %68 = ptrtoint ptr %mask80 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 7, ptr %mask80, align 1
  %arrayinit.element81 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 19
  %69 = ptrtoint ptr %arrayinit.element81 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16144, ptr %arrayinit.element81, align 4
  %val83 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 19, i32 1
  %70 = ptrtoint ptr %val83 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 13, ptr %val83, align 4
  %arrayinit.element85 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 20
  %71 = ptrtoint ptr %arrayinit.element85 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 16145, ptr %arrayinit.element85, align 4
  %val87 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 20, i32 1
  %72 = ptrtoint ptr %val87 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 2, ptr %val87, align 4
  %arrayinit.element89 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21
  %73 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16146, ptr %arrayinit.element89, align 4
  %val91 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 21, i32 1
  %74 = ptrtoint ptr %val91 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %val91, align 4
  %arrayinit.element93 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22
  %75 = ptrtoint ptr %arrayinit.element93 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 16163, ptr %arrayinit.element93, align 4
  %val95 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 22, i32 1
  %76 = ptrtoint ptr %val95 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 44, ptr %val95, align 4
  %arrayinit.element97 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 23
  %77 = ptrtoint ptr %arrayinit.element97 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 16209, ptr %arrayinit.element97, align 4
  %val99 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 23, i32 1
  %78 = ptrtoint ptr %val99 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 19, ptr %val99, align 4
  %arrayinit.element101 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 24
  %79 = ptrtoint ptr %arrayinit.element101 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 16210, ptr %arrayinit.element101, align 4
  %val103 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 24, i32 1
  %80 = ptrtoint ptr %val103 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %val103, align 4
  %arrayinit.element105 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 25
  %81 = ptrtoint ptr %arrayinit.element105 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16211, ptr %arrayinit.element105, align 4
  %val107 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 25, i32 1
  %82 = ptrtoint ptr %val107 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %val107, align 4
  %arrayinit.element109 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 26
  %83 = ptrtoint ptr %arrayinit.element109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 10214, ptr %arrayinit.element109, align 4
  %val111 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 26, i32 1
  %84 = ptrtoint ptr %val111 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 20, ptr %val111, align 4
  %arrayinit.element113 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 27
  %85 = ptrtoint ptr %arrayinit.element113 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 10118, ptr %arrayinit.element113, align 4
  %val115 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 27, i32 1
  %86 = ptrtoint ptr %val115 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 2, ptr %val115, align 4
  %mask116 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 27, i32 2
  %87 = ptrtoint ptr %mask116 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 7, ptr %mask116, align 1
  %arrayinit.element117 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 28
  %88 = ptrtoint ptr %arrayinit.element117 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 10119, ptr %arrayinit.element117, align 4
  %val119 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 28, i32 1
  %89 = ptrtoint ptr %val119 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 64, ptr %val119, align 4
  %mask120 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 28, i32 2
  %90 = ptrtoint ptr %mask120 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 -32, ptr %mask120, align 1
  %arrayinit.element121 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 29
  %91 = ptrtoint ptr %arrayinit.element121 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 10223, ptr %arrayinit.element121, align 4
  %val123 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 29, i32 1
  %92 = ptrtoint ptr %val123 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 16, ptr %val123, align 4
  %mask124 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 29, i32 2
  %93 = ptrtoint ptr %mask124 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 24, ptr %mask124, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t2, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %94 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %96 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %modulation, align 4
  %98 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %100 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bandwidth_hz, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %102 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %inversion, align 4
  %stream_id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %104 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %stream_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bandwidth_hz131 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %106 = ptrtoint ptr %bandwidth_hz131 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bandwidth_hz131, align 4
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values)
  switch i32 %107, label %do.end.cleanup_crit_edge [
    i32 5000000, label %do.end.sw.epilog_crit_edge
    i32 6000000, label %sw.bb132
    i32 7000000, label %sw.bb133
    i32 8000000, label %sw.bb134
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb132:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb133:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb134:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb134, %sw.bb133, %sw.bb132, %do.end.sw.epilog_crit_edge
  %bw_param.0 = phi i32 [ 0, %sw.bb134 ], [ 64, %sw.bb133 ], [ 128, %sw.bb132 ], [ 192, %do.end.sw.epilog_crit_edge ]
  %bw_i.0 = phi i32 [ 3, %sw.bb134 ], [ 2, %sw.bb133 ], [ 1, %sw.bb132 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %109 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %set_params, align 4
  %tobool135.not = icmp eq ptr %110, null
  br i1 %tobool135.not, label %sw.epilog.if.end141_crit_edge, label %if.then136

sw.epilog.if.end141_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end141

if.then136:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call140 = tail call i32 %110(ptr noundef %fe) #4
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %sw.epilog.if.end141_crit_edge
  %delivery_system142 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %111 = ptrtoint ptr %delivery_system142 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %delivery_system142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %112)
  %cmp.not = icmp eq i32 %112, 16
  br i1 %cmp.not, label %if.end141.if.end149_crit_edge, label %if.then144

if.end141.if.end149_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

if.then144:                                       ; preds = %if.end141
  %call145 = call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %1, ptr noundef nonnull %tab, i32 noundef 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.then144.if.end149_crit_edge, label %if.then144.do.body486_crit_edge

if.then144.do.body486_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.then144.if.end149_crit_edge:                   ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end149

if.end149:                                        ; preds = %if.then144.if.end149_crit_edge, %if.end141.if.end149_crit_edge
  %113 = ptrtoint ptr %delivery_system142 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 16, ptr %delivery_system142, align 8
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %114 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %get_if_frequency, align 4
  %tobool153.not = icmp eq ptr %115, null
  br i1 %tobool153.not, label %if.end149.do.body486_crit_edge, label %if.then154

if.end149.do.body486_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.then154:                                       ; preds = %if.end149
  %call158 = call i32 %115(ptr noundef %fe, ptr noundef nonnull %if_frequency) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %do.body162, label %if.then154.do.body486_crit_edge

if.then154.do.body486_crit_edge:                  ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

do.body162:                                       ; preds = %if.then154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t2, %if.then174)) #4
          to label %if.end376 [label %if.then174], !srcloc !48

if.then174:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #6
  %dev175 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %116 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug291, ptr noundef %dev175, ptr noundef nonnull @.str.4, i32 noundef %117) #4
  br label %if.end376

if.end376:                                        ; preds = %if.then174, %do.body162
  %118 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %if_frequency, align 4
  %conv180 = zext i32 %119 to i64
  %mul = shl nuw nsw i64 %conv180, 24
  %add = add nuw nsw i64 %mul, 20500000
  %120 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 1887103718422835785, i64 %add) #7, !srcloc !49
  %121 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1887103718422835785, i64 %add, i64 %120) #7, !srcloc !50
  %div352642 = lshr i64 %121, 22
  %shr380661 = lshr i64 %121, 38
  %conv382 = trunc i64 %shr380661 to i8
  %122 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv382, ptr %buf, align 1
  %shr384662 = lshr i64 %121, 30
  %conv386 = trunc i64 %shr384662 to i8
  %123 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv386, ptr %6, align 1
  %conv390 = trunc i64 %div352642 to i8
  %124 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv390, ptr %8, align 1
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %125 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap, align 8
  %call394 = call i32 @regmap_bulk_write(ptr noundef %126, i32 noundef 8374, ptr noundef nonnull %buf, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call394)
  %tobool395.not = icmp eq i32 %call394, 0
  br i1 %tobool395.not, label %if.end397, label %if.end376.do.body486_crit_edge

if.end376.do.body486_crit_edge:                   ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end397:                                        ; preds = %if.end376
  %stream_id398 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 24
  %127 = ptrtoint ptr %stream_id398 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %stream_id398, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %128)
  %cmp399 = icmp ugt i32 %128, 255
  br i1 %cmp399, label %do.body402, label %do.body426

do.body402:                                       ; preds = %if.end397
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t2, %if.then414)) #4
          to label %do.end418 [label %if.then414], !srcloc !48

if.then414:                                       ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #6
  %dev415 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug292, ptr noundef %dev415, ptr noundef nonnull @.str.5) #4
  br label %do.end418

do.end418:                                        ; preds = %if.then414, %do.body402
  %129 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap, align 8
  %call421 = call i32 @regmap_write(ptr noundef %130, i32 noundef 9133, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call421)
  %tobool422.not = icmp eq i32 %call421, 0
  br i1 %tobool422.not, label %do.end418.if.end457_crit_edge, label %do.end418.do.body486_crit_edge

do.end418.do.body486_crit_edge:                   ; preds = %do.end418
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

do.end418.if.end457_crit_edge:                    ; preds = %do.end418
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end457

do.body426:                                       ; preds = %if.end397
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t2, %if.then438)) #4
          to label %do.end442 [label %if.then438], !srcloc !48

if.then438:                                       ; preds = %do.body426
  call void @__sanitizer_cov_trace_pc() #6
  %dev439 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug293, ptr noundef %dev439, ptr noundef nonnull @.str.6) #4
  br label %do.end442

do.end442:                                        ; preds = %if.then438, %do.body426
  %131 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap, align 8
  %133 = ptrtoint ptr %stream_id398 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %stream_id398, align 4
  %and446 = and i32 %134, 255
  %call447 = call i32 @regmap_write(ptr noundef %132, i32 noundef 9135, i32 noundef %and446) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call447)
  %tobool448.not = icmp eq i32 %call447, 0
  br i1 %tobool448.not, label %if.end450, label %do.end442.do.body486_crit_edge

do.end442.do.body486_crit_edge:                   ; preds = %do.end442
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end450:                                        ; preds = %do.end442
  %135 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap, align 8
  %call453 = call i32 @regmap_write(ptr noundef %136, i32 noundef 9133, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call453)
  %tobool454.not = icmp eq i32 %call453, 0
  br i1 %tobool454.not, label %if.end450.if.end457_crit_edge, label %if.end450.do.body486_crit_edge

if.end450.do.body486_crit_edge:                   ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end450.if.end457_crit_edge:                    ; preds = %if.end450
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end457

if.end457:                                        ; preds = %if.end450.if.end457_crit_edge, %do.end418.if.end457_crit_edge
  %137 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap, align 8
  %arrayidx460 = getelementptr [4 x [5 x i8]], ptr %bw_params1, i32 0, i32 %bw_i.0
  %call462 = call i32 @regmap_bulk_write(ptr noundef %138, i32 noundef 8351, ptr noundef %arrayidx460, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call462)
  %tobool463.not = icmp eq i32 %call462, 0
  br i1 %tobool463.not, label %if.end465, label %if.end457.do.body486_crit_edge

if.end457.do.body486_crit_edge:                   ; preds = %if.end457
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end465:                                        ; preds = %if.end457
  %139 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 8407, i32 noundef 192, i32 noundef %bw_param.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool471.not = icmp eq i32 %call.i, 0
  br i1 %tobool471.not, label %if.end473, label %if.end465.do.body486_crit_edge

if.end465.do.body486_crit_edge:                   ; preds = %if.end465
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end473:                                        ; preds = %if.end465
  %141 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap, align 8
  %call476 = call i32 @regmap_write(ptr noundef %142, i32 noundef 255, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call476)
  %tobool477.not = icmp eq i32 %call476, 0
  br i1 %tobool477.not, label %if.end479, label %if.end473.do.body486_crit_edge

if.end473.do.body486_crit_edge:                   ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end479:                                        ; preds = %if.end473
  %143 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap, align 8
  %call482 = call i32 @regmap_write(ptr noundef %144, i32 noundef 254, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call482)
  %tobool483.not = icmp eq i32 %call482, 0
  br i1 %tobool483.not, label %if.end479.cleanup_crit_edge, label %if.end479.do.body486_crit_edge

if.end479.do.body486_crit_edge:                   ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body486

if.end479.cleanup_crit_edge:                      ; preds = %if.end479
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body486:                                       ; preds = %if.end479.do.body486_crit_edge, %if.end473.do.body486_crit_edge, %if.end465.do.body486_crit_edge, %if.end457.do.body486_crit_edge, %if.end450.do.body486_crit_edge, %do.end442.do.body486_crit_edge, %do.end418.do.body486_crit_edge, %if.end376.do.body486_crit_edge, %if.then154.do.body486_crit_edge, %if.end149.do.body486_crit_edge, %if.then144.do.body486_crit_edge
  %ret.0 = phi i32 [ %call145, %if.then144.do.body486_crit_edge ], [ %call158, %if.then154.do.body486_crit_edge ], [ %call394, %if.end376.do.body486_crit_edge ], [ %call421, %do.end418.do.body486_crit_edge ], [ %call462, %if.end457.do.body486_crit_edge ], [ %call.i, %if.end465.do.body486_crit_edge ], [ %call476, %if.end473.do.body486_crit_edge ], [ %call482, %if.end479.do.body486_crit_edge ], [ %call447, %do.end442.do.body486_crit_edge ], [ %call453, %if.end450.do.body486_crit_edge ], [ -22, %if.end149.do.body486_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t2, %if.then498)) #4
          to label %cleanup [label %if.then498], !srcloc !48

if.then498:                                       ; preds = %do.body486
  call void @__sanitizer_cov_trace_pc() #6
  %dev499 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug294, ptr noundef %dev499, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then498, %do.body486, %if.end479.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end479.cleanup_crit_edge ], [ %ret.0, %if.then498 ], [ %ret.0, %do.body486 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %tab) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %bw_params1) #4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_get_frontend_t2(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) local_unnamed_addr #0 align 64 {
entry:
  %utmp = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #4
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !46
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend_t2, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.9) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call5 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 8284, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body85_crit_edge

do.end.do.body85_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85

if.end8:                                          ; preds = %do.end
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = and i8 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %12)
  %13 = icmp ult i8 %12, 6
  br i1 %13, label %switch.lookup, label %if.end8.sw.epilog_crit_edge

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %and = zext i8 %12 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.cxd2820r_get_frontend_t2, i32 0, i32 %and
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %transmission_mode19 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %15 = ptrtoint ptr %transmission_mode19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %transmission_mode19, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end8.sw.epilog_crit_edge
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %6, align 1
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %.not = icmp eq i8 %19, 7
  br i1 %.not, label %sw.epilog.sw.epilog37_crit_edge, label %switch.lookup148

sw.epilog.sw.epilog37_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog37

switch.lookup148:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %and23 = zext i8 %19 to i32
  %switch.gep149 = getelementptr inbounds [7 x i32], ptr @switch.table.cxd2820r_get_frontend_t2.13, i32 0, i32 %and23
  %20 = ptrtoint ptr %switch.gep149 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load150 = load i32, ptr %switch.gep149, align 4
  %guard_interval36 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %21 = ptrtoint ptr %guard_interval36 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.load150, ptr %guard_interval36, align 4
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %switch.lookup148, %sw.epilog.sw.epilog37_crit_edge
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 8
  %call41 = call i32 @regmap_bulk_read(ptr noundef %23, i32 noundef 8795, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %sw.epilog37.do.body85_crit_edge

sw.epilog37.do.body85_crit_edge:                  ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85

if.end44:                                         ; preds = %sw.epilog37
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  %26 = and i8 %25, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %26)
  %27 = icmp ult i8 %26, 6
  br i1 %27, label %switch.lookup151, label %if.end44.sw.epilog60_crit_edge

if.end44.sw.epilog60_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog60

switch.lookup151:                                 ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %and48 = zext i8 %26 to i32
  %switch.gep152 = getelementptr inbounds [6 x i32], ptr @switch.table.cxd2820r_get_frontend_t2.14, i32 0, i32 %and48
  %28 = ptrtoint ptr %switch.gep152 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load153 = load i32, ptr %switch.gep152, align 4
  %fec_inner59 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 5
  %29 = ptrtoint ptr %fec_inner59 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.load153, ptr %fec_inner59, align 4
  br label %sw.epilog60

sw.epilog60:                                      ; preds = %switch.lookup151, %if.end44.sw.epilog60_crit_edge
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %32 = and i8 %31, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %32)
  %33 = icmp ult i8 %32, 4
  br i1 %33, label %switch.lookup154, label %sw.epilog60.sw.epilog72_crit_edge

sw.epilog60.sw.epilog72_crit_edge:                ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog72

switch.lookup154:                                 ; preds = %sw.epilog60
  call void @__sanitizer_cov_trace_pc() #6
  %and64 = zext i8 %32 to i32
  %switch.gep155 = getelementptr inbounds [4 x i32], ptr @switch.table.cxd2820r_get_frontend_t2.15, i32 0, i32 %and64
  %34 = ptrtoint ptr %switch.gep155 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load156 = load i32, ptr %switch.gep155, align 4
  %modulation71 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %35 = ptrtoint ptr %modulation71 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.load156, ptr %modulation71, align 4
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %switch.lookup154, %sw.epilog60.sw.epilog72_crit_edge
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 8
  %call75 = call i32 @regmap_read(ptr noundef %37, i32 noundef 8373, ptr noundef nonnull %utmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %sw.epilog72.do.body85_crit_edge

sw.epilog72.do.body85_crit_edge:                  ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body85

if.end78:                                         ; preds = %sw.epilog72
  %38 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %utmp, align 4
  %40 = and i32 %39, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %trunc.not = icmp eq i32 %40, 0
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  br i1 %trunc.not, label %sw.bb81, label %sw.bb82

sw.bb81:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %inversion, align 4
  br label %cleanup

sw.bb82:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %inversion, align 4
  br label %cleanup

do.body85:                                        ; preds = %sw.epilog72.do.body85_crit_edge, %sw.epilog37.do.body85_crit_edge, %do.end.do.body85_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body85_crit_edge ], [ %call41, %sw.epilog37.do.body85_crit_edge ], [ %call75, %sw.epilog72.do.body85_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend_t2, %if.then97)) #4
          to label %cleanup [label %if.then97], !srcloc !48

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  %dev98 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug296, ptr noundef %dev98, ptr noundef nonnull @.str.7, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %do.body85, %sw.bb82, %sw.bb81
  %retval.0 = phi i32 [ 0, %sw.bb82 ], [ 0, %sw.bb81 ], [ %ret.0, %if.then97 ], [ %ret.0, %do.body85 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_read_status_t2(ptr nocapture noundef %fe, ptr nocapture noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #4
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %5 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %buf, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 8208, ptr noundef nonnull %buf, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body165_crit_edge

entry.do.body165_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body165

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 4
  %conv = zext i8 %11 to i32
  %and = and i32 %conv, 7
  %12 = lshr i32 %conv, 5
  %and8 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and)
  %cmp = icmp ne i32 %and, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp10.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10.not
  %or.cond237 = select i1 %cmp, i1 %cmp10.not, i1 false
  %. = select i1 %or.cond237, i32 0, i32 15
  %.sink = select i1 %or.cond, i32 %., i32 31
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status_t2.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status_t2, %if.then25)) #4
          to label %do.end [label %if.then25], !srcloc !48

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status_t2.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %15, i32 noundef 1, ptr noundef nonnull %buf, i32 noundef %and, i32 noundef %and8) #4
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.end
  %16 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %status, align 4
  %and27 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else53, label %if.then29

if.then29:                                        ; preds = %do.end
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 8
  %call33 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 8230, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %cleanup.thread, label %if.then29.do.body165_crit_edge

if.then29.do.body165_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body165

cleanup.thread:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %buf, align 4
  %conv38 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv38, 8
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %4, align 1
  %conv40 = zext i8 %23 to i32
  %shl.masked = and i32 %shl, 3840
  %neg = or i32 %shl.masked, %conv40
  %and42 = xor i32 %neg, 4095
  %shl43 = shl nuw nsw i32 %and42, 4
  %shr44 = lshr i32 %and42, 8
  %or45 = or i32 %shl43, %shr44
  %strength46 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %24 = ptrtoint ptr %strength46 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %strength46, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %25 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %stat, align 1
  %conv49 = zext i32 %or45 to i64
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %conv49, ptr %26, align 1
  br label %if.end60

if.else53:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %strength54 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %28 = ptrtoint ptr %strength54 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %strength54, align 4
  %stat57 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %29 = ptrtoint ptr %stat57 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %stat57, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %cleanup.thread
  %30 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status, align 4
  %and61 = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else100, label %if.then63

if.then63:                                        ; preds = %if.end60
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 8
  %call67 = call i32 @regmap_bulk_read(ptr noundef %33, i32 noundef 8232, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then63.do.body165_crit_edge

if.then63.do.body165_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body165

if.end70:                                         ; preds = %if.then63
  %34 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %buf, align 4
  %conv72 = zext i8 %35 to i32
  %shl73 = shl nuw nsw i32 %conv72, 8
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %4, align 1
  %conv75 = zext i8 %37 to i32
  %shl73.masked = and i32 %shl73, 3840
  %and78 = or i32 %shl73.masked, %conv75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end70.cleanup97.thread_crit_edge, label %if.then80

if.end70.cleanup97.thread_crit_edge:              ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup97.thread

if.then80:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %call81 = call i32 @intlog10(i32 noundef %and78) #4
  %sub = add i32 %call81, -15151336
  %conv82 = zext i32 %sub to i64
  %mul = mul nuw nsw i64 %conv82, 10000
  %shr.i.i = lshr i64 %mul, 24
  %conv84 = trunc i64 %shr.i.i to i32
  br label %cleanup97.thread

cleanup97.thread:                                 ; preds = %if.then80, %if.end70.cleanup97.thread_crit_edge
  %cnr.0 = phi i32 [ %conv84, %if.then80 ], [ 0, %if.end70.cleanup97.thread_crit_edge ]
  %cnr87 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %38 = ptrtoint ptr %cnr87 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %cnr87, align 1
  %stat90 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %39 = ptrtoint ptr %stat90 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %stat90, align 1
  %conv93 = zext i32 %cnr.0 to i64
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %conv93, ptr %40, align 1
  br label %if.end107

if.else100:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  %cnr101 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %42 = ptrtoint ptr %cnr101 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %cnr101, align 1
  %stat104 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %43 = ptrtoint ptr %stat104 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %stat104, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.else100, %cleanup97.thread
  %44 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status, align 4
  %and108 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.else157, label %if.then110

if.then110:                                       ; preds = %if.end107
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 8
  %call114 = call i32 @regmap_bulk_read(ptr noundef %47, i32 noundef 8249, ptr noundef nonnull %buf, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end117, label %if.then110.do.body165_crit_edge

if.then110.do.body165_crit_edge:                  ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body165

if.end117:                                        ; preds = %if.then110
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %buf, align 4
  %conv119 = zext i8 %49 to i32
  %50 = and i32 %conv119, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool122.not = icmp eq i32 %50, 0
  br i1 %tobool122.not, label %if.end117.cleanup154.thread_crit_edge, label %if.then123

if.end117.cleanup154.thread_crit_edge:            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup154.thread

if.then123:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #6
  %shl126 = shl nuw i32 %conv119, 24
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %4, align 1
  %conv128 = zext i8 %52 to i32
  %shl129 = shl nuw nsw i32 %conv128, 16
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 2
  %conv132 = zext i8 %54 to i32
  %shl133 = shl nuw nsw i32 %conv132, 8
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %6, align 1
  %conv136 = zext i8 %56 to i32
  %shl126.masked = and i32 %shl126, 251658240
  %or130.masked = or i32 %shl129, %shl126.masked
  %or134.masked = or i32 %or130.masked, %shl133
  %and139 = or i32 %or134.masked, %conv136
  br label %cleanup154.thread

cleanup154.thread:                                ; preds = %if.then123, %if.end117.cleanup154.thread_crit_edge
  %post_bit_error.0 = phi i32 [ %and139, %if.then123 ], [ 0, %if.end117.cleanup154.thread_crit_edge ]
  %conv142 = zext i32 %post_bit_error.0 to i64
  %post_bit_error143 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 9
  %57 = ptrtoint ptr %post_bit_error143 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %post_bit_error143, align 8
  %add = add i64 %58, %conv142
  store i64 %add, ptr %post_bit_error143, align 8
  %post_bit_error144 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %59 = ptrtoint ptr %post_bit_error144 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %post_bit_error144, align 4
  %stat147 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %60 = ptrtoint ptr %stat147 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 3, ptr %stat147, align 1
  %61 = load i64, ptr %post_bit_error143, align 8
  %62 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %61, ptr %62, align 1
  br label %cleanup182

if.else157:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #6
  %post_bit_error158 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %64 = ptrtoint ptr %post_bit_error158 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %post_bit_error158, align 4
  %stat161 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %65 = ptrtoint ptr %stat161 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %stat161, align 1
  br label %cleanup182

do.body165:                                       ; preds = %if.then110.do.body165_crit_edge, %if.then63.do.body165_crit_edge, %if.then29.do.body165_crit_edge, %entry.do.body165_crit_edge
  %ret.3 = phi i32 [ %call, %entry.do.body165_crit_edge ], [ %call33, %if.then29.do.body165_crit_edge ], [ %call67, %if.then63.do.body165_crit_edge ], [ %call114, %if.then110.do.body165_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status_t2.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status_t2, %if.then177)) #4
          to label %cleanup182 [label %if.then177], !srcloc !48

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #6
  %dev178 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status_t2.__UNIQUE_ID_ddebug298, ptr noundef %dev178, ptr noundef nonnull @.str.7, i32 noundef %ret.3) #4
  br label %cleanup182

cleanup182:                                       ; preds = %if.then177, %do.body165, %if.else157, %cleanup154.thread
  %retval.0 = phi i32 [ 0, %if.else157 ], [ %ret.3, %if.then177 ], [ 0, %cleanup154.thread ], [ %ret.3, %do.body165 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_sleep_t2(ptr nocapture noundef readonly %fe) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep_t2.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep_t2, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !48

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep_t2.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.9) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %1, ptr noundef nonnull @cxd2820r_sleep_t2.tab, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.body8

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %delivery_system = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %delivery_system, align 8
  br label %cleanup

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep_t2.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep_t2, %if.then20)) #4
          to label %cleanup [label %if.then20], !srcloc !48

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep_t2.__UNIQUE_ID_ddebug300, ptr noundef %dev21, ptr noundef nonnull @.str.7, i32 noundef %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body8, %if.end7
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2820r_get_tune_settings_t2(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %s) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1500, ptr %s, align 4
  %frequency_stepsize_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 0, i32 3
  %1 = ptrtoint ptr %frequency_stepsize_hz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %frequency_stepsize_hz, align 4
  %mul = shl i32 %2, 1
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %3 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %step_size, align 4
  %4 = load i32, ptr %frequency_stepsize_hz, align 4
  %mul4 = shl i32 %4, 1
  %add = or i32 %mul4, 1
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %5 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 60, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 103, i32 3}
!8 = !{ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug291, !7, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 119, i32 3}
!11 = !{ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug292, !10, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 124, i32 3}
!14 = !{ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug293, !13, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 151, i32 2}
!17 = !{ptr @cxd2820r_set_frontend_t2.__UNIQUE_ID_ddebug294, !16, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 165, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug295, !19, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!22 = !{ptr @cxd2820r_get_frontend_t2.__UNIQUE_ID_ddebug296, !23, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 271, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 302, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cxd2820r_read_status_t2.__UNIQUE_ID_ddebug297, !25, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!28 = !{ptr @cxd2820r_read_status_t2.__UNIQUE_ID_ddebug298, !29, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!29 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 380, i32 2}
!30 = !{ptr @cxd2820r_sleep_t2.tab, !31, !"tab", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 389, i32 35}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 398, i32 2}
!34 = !{ptr @cxd2820r_sleep_t2.__UNIQUE_ID_ddebug299, !33, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!35 = !{ptr @cxd2820r_sleep_t2.__UNIQUE_ID_ddebug300, !36, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/cxd2820r_t2.c", i32 408, i32 2}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{i8 0, i8 2}
!48 = !{i64 2148275371, i64 2148275376, i64 2148275389, i64 2148275433, i64 2148275467, i64 2148275488}
!49 = !{i64 814727, i64 814754}
!50 = !{i64 815237, i64 815264, i64 815298, i64 815319}
