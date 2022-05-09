; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2820r_t.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_t.c"
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

@__const.cxd2820r_set_frontend_t.bw_params1 = private unnamed_addr constant [3 x [5 x i8]] [[5 x i8] c"\17\EA\AA\AA\AA", [5 x i8] c"\14\80\00\00\00", [5 x i8] c"\11\F0\00\00\00"], align 1
@__const.cxd2820r_set_frontend_t.bw_params2 = private unnamed_addr constant [3 x [2 x i8]] [[2 x i8] c"\1F\DC", [2 x i8] c"\12\F8", [2 x i8] c"\01\E0"], align 1
@cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxd2820r\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2820r_set_frontend_t\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/dvb-frontends/cxd2820r_t.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"delivery_system=%d modulation=%d frequency=%u bandwidth_hz=%u inversion=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_frequency=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2820r_get_frontend_t\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_read_status_t.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2820r_read_status_t\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"status=%02x raw=%*ph sync=%u ts=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@cxd2820r_read_status_t.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.5, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_init_t.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_init_t\00", [16 x i8] zeroinitializer }, align 32
@cxd2820r_init_t.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.5, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_sleep_t.tab = internal global { [5 x %struct.reg_val_mask], [56 x i8] } { [5 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i8 31, i8 -1 }, %struct.reg_val_mask { i32 133, i8 0, i8 -1 }, %struct.reg_val_mask { i32 136, i8 1, i8 -1 }, %struct.reg_val_mask { i32 129, i8 0, i8 -1 }, %struct.reg_val_mask { i32 128, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@cxd2820r_sleep_t.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.7, i8 0, i8 100, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxd2820r_sleep_t\00", [47 x i8] zeroinitializer }, align 32
@cxd2820r_sleep_t.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.5, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@switch.table.cxd2820r_get_frontend_t = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.cxd2820r_get_frontend_t.12 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.cxd2820r_get_frontend_t.13 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 46, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 86, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 122, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 135, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 277, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 378, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 395, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [44 x i8] c"../drivers/media/dvb-frontends/cxd2820r_t.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 403, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [37 x i8] c"switch.table.cxd2820r_get_frontend_t\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [40 x i8] c"switch.table.cxd2820r_get_frontend_t.12\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [40 x i8] c"switch.table.cxd2820r_get_frontend_t.13\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cxd2820r_sleep_t.tab, ptr @.str.11, ptr @switch.table.cxd2820r_get_frontend_t, ptr @switch.table.cxd2820r_get_frontend_t.12, ptr @switch.table.cxd2820r_get_frontend_t.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_sleep_t.tab to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cxd2820r_get_frontend_t.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_set_frontend_t(ptr noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %if_frequency = alloca i32, align 4
  %buf = alloca [3 x i8], align 1
  %bw_params1 = alloca [3 x [5 x i8]], align 1
  %bw_params2 = alloca [3 x [2 x i8]], align 1
  %tab = alloca [12 x %struct.reg_val_mask], align 4
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
  store i32 -1, ptr %if_frequency, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !45
  %6 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !45
  %8 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %bw_params1) #4
  %10 = call ptr @memcpy(ptr %bw_params1, ptr @__const.cxd2820r_set_frontend_t.bw_params1, i32 15)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %bw_params2) #4
  %11 = call ptr @memcpy(ptr %bw_params2, ptr @__const.cxd2820r_set_frontend_t.bw_params2, i32 6)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tab) #4
  %12 = getelementptr inbounds i8, ptr %tab, i32 4
  %13 = call ptr @memset(ptr %12, i32 255, i32 92)
  %14 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %tab, align 4
  %val = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 1
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %val, align 4
  %arrayinit.element = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1
  %16 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 129, ptr %arrayinit.element, align 4
  %val3 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 1
  %17 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %val3, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2
  %18 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 133, ptr %arrayinit.element5, align 4
  %val7 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 1
  %19 = ptrtoint ptr %val7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %val7, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3
  %20 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 136, ptr %arrayinit.element9, align 4
  %val11 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 1
  %21 = ptrtoint ptr %val11 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %val11, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4
  %22 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 112, ptr %arrayinit.element13, align 4
  %val15 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 1
  %ts_mode = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ts_mode, align 4
  %25 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %val15, align 4
  %arrayinit.element17 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5
  %26 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 113, ptr %arrayinit.element17, align 4
  %val19 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 1
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %ts_clk_inv to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ts_clk_inv, align 1, !range !46
  %29 = shl nuw nsw i8 %28, 4
  %30 = xor i8 %29, 16
  %31 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %val19, align 4
  %mask20 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 2
  %32 = ptrtoint ptr %mask20 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 16, ptr %mask20, align 1
  %arrayinit.element21 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6
  %33 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 203, ptr %arrayinit.element21, align 4
  %val23 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 1
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %if_agc_polarity to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %if_agc_polarity, align 2, !range !46
  %36 = shl nuw nsw i8 %35, 6
  %37 = ptrtoint ptr %val23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %val23, align 4
  %mask28 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 2
  %38 = ptrtoint ptr %mask28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 64, ptr %mask28, align 1
  %arrayinit.element29 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7
  %39 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 165, ptr %arrayinit.element29, align 4
  %val31 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 1
  %40 = ptrtoint ptr %val31 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %val31, align 4
  %mask32 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 2
  %41 = ptrtoint ptr %mask32 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %mask32, align 1
  %arrayinit.element33 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8
  %42 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 130, ptr %arrayinit.element33, align 4
  %val35 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 1
  %43 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 32, ptr %val35, align 4
  %mask36 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 2
  %44 = ptrtoint ptr %mask36 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 96, ptr %mask36, align 1
  %arrayinit.element37 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9
  %45 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 194, ptr %arrayinit.element37, align 4
  %val39 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 1
  %46 = ptrtoint ptr %val39 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -61, ptr %val39, align 4
  %arrayinit.element41 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10
  %47 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 362, ptr %arrayinit.element41, align 4
  %val43 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 1
  %48 = ptrtoint ptr %val43 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 80, ptr %val43, align 4
  %arrayinit.element45 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11
  %49 = ptrtoint ptr %arrayinit.element45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1063, ptr %arrayinit.element45, align 4
  %val47 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 1
  %50 = ptrtoint ptr %val47 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 65, ptr %val47, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %51 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %modulation, align 4
  %55 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %57 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bandwidth_hz, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %59 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %inversion, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %bandwidth_hz55 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %61 = ptrtoint ptr %bandwidth_hz55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %bandwidth_hz55, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %do.end.cleanup_crit_edge [
    i32 6000000, label %do.end.sw.epilog_crit_edge
    i32 7000000, label %sw.bb56
    i32 8000000, label %sw.bb57
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb56:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb57:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %sw.bb56, %do.end.sw.epilog_crit_edge
  %bw_param.0 = phi i32 [ 0, %sw.bb57 ], [ 64, %sw.bb56 ], [ 128, %do.end.sw.epilog_crit_edge ]
  %bw_i.0 = phi i32 [ 2, %sw.bb57 ], [ 1, %sw.bb56 ], [ 0, %do.end.sw.epilog_crit_edge ]
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %64 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %set_params, align 4
  %tobool58.not = icmp eq ptr %65, null
  br i1 %tobool58.not, label %sw.epilog.if.end64_crit_edge, label %if.then59

sw.epilog.if.end64_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.then59:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call63 = tail call i32 %65(ptr noundef %fe) #4
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %sw.epilog.if.end64_crit_edge
  %delivery_system65 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %66 = ptrtoint ptr %delivery_system65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delivery_system65, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp.not = icmp eq i32 %67, 3
  br i1 %cmp.not, label %if.end64.if.end72_crit_edge, label %if.then67

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.then67:                                        ; preds = %if.end64
  %call68 = call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %1, ptr noundef nonnull %tab, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then67.if.end72_crit_edge, label %if.then67.do.body357_crit_edge

if.then67.do.body357_crit_edge:                   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.then67.if.end72_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end72

if.end72:                                         ; preds = %if.then67.if.end72_crit_edge, %if.end64.if.end72_crit_edge
  %68 = ptrtoint ptr %delivery_system65 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %delivery_system65, align 8
  %ber_running = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 10
  %69 = ptrtoint ptr %ber_running to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %ber_running, align 8
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %70 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_if_frequency, align 4
  %tobool76.not = icmp eq ptr %71, null
  br i1 %tobool76.not, label %if.end72.do.body357_crit_edge, label %if.then77

if.end72.do.body357_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.then77:                                        ; preds = %if.end72
  %call81 = call i32 %71(ptr noundef %fe, ptr noundef nonnull %if_frequency) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %do.body85, label %if.then77.do.body357_crit_edge

if.then77.do.body357_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

do.body85:                                        ; preds = %if.then77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t, %if.then97)) #4
          to label %if.end299 [label %if.then97], !srcloc !47

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #6
  %dev98 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %72 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug291, ptr noundef %dev98, ptr noundef nonnull @.str.4, i32 noundef %73) #4
  br label %if.end299

if.end299:                                        ; preds = %if.then97, %do.body85
  %74 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %if_frequency, align 4
  %conv103 = zext i32 %75 to i64
  %mul = shl nuw nsw i64 %conv103, 24
  %add = add nuw nsw i64 %mul, 20500000
  %76 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 1887103718422835785, i64 %add) #7, !srcloc !48
  %77 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1887103718422835785, i64 %add, i64 %76) #7, !srcloc !49
  %div275506 = lshr i64 %77, 22
  %shr303517 = lshr i64 %77, 38
  %conv305 = trunc i64 %shr303517 to i8
  %78 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv305, ptr %buf, align 1
  %shr307518 = lshr i64 %77, 30
  %conv309 = trunc i64 %shr307518 to i8
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv309, ptr %6, align 1
  %conv313 = trunc i64 %div275506 to i8
  %80 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv313, ptr %8, align 1
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 8
  %call317 = call i32 @regmap_bulk_write(ptr noundef %82, i32 noundef 182, ptr noundef nonnull %buf, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end320, label %if.end299.do.body357_crit_edge

if.end299.do.body357_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.end320:                                        ; preds = %if.end299
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 8
  %arrayidx323 = getelementptr [3 x [5 x i8]], ptr %bw_params1, i32 0, i32 %bw_i.0
  %call325 = call i32 @regmap_bulk_write(ptr noundef %84, i32 noundef 159, ptr noundef %arrayidx323, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end328, label %if.end320.do.body357_crit_edge

if.end320.do.body357_crit_edge:                   ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.end328:                                        ; preds = %if.end320
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 215, i32 noundef 192, i32 noundef %bw_param.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool334.not = icmp eq i32 %call.i, 0
  br i1 %tobool334.not, label %if.end336, label %if.end328.do.body357_crit_edge

if.end328.do.body357_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.end336:                                        ; preds = %if.end328
  %87 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap, align 8
  %arrayidx339 = getelementptr [3 x [2 x i8]], ptr %bw_params2, i32 0, i32 %bw_i.0
  %call341 = call i32 @regmap_bulk_write(ptr noundef %88, i32 noundef 217, ptr noundef %arrayidx339, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call341)
  %tobool342.not = icmp eq i32 %call341, 0
  br i1 %tobool342.not, label %if.end344, label %if.end336.do.body357_crit_edge

if.end336.do.body357_crit_edge:                   ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.end344:                                        ; preds = %if.end336
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 8
  %call347 = call i32 @regmap_write(ptr noundef %90, i32 noundef 255, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call347)
  %tobool348.not = icmp eq i32 %call347, 0
  br i1 %tobool348.not, label %if.end350, label %if.end344.do.body357_crit_edge

if.end344.do.body357_crit_edge:                   ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.end350:                                        ; preds = %if.end344
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 8
  %call353 = call i32 @regmap_write(ptr noundef %92, i32 noundef 254, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.end350.cleanup_crit_edge, label %if.end350.do.body357_crit_edge

if.end350.do.body357_crit_edge:                   ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body357

if.end350.cleanup_crit_edge:                      ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body357:                                       ; preds = %if.end350.do.body357_crit_edge, %if.end344.do.body357_crit_edge, %if.end336.do.body357_crit_edge, %if.end328.do.body357_crit_edge, %if.end320.do.body357_crit_edge, %if.end299.do.body357_crit_edge, %if.then77.do.body357_crit_edge, %if.end72.do.body357_crit_edge, %if.then67.do.body357_crit_edge
  %ret.0 = phi i32 [ %call68, %if.then67.do.body357_crit_edge ], [ %call81, %if.then77.do.body357_crit_edge ], [ %call317, %if.end299.do.body357_crit_edge ], [ %call325, %if.end320.do.body357_crit_edge ], [ %call.i, %if.end328.do.body357_crit_edge ], [ %call341, %if.end336.do.body357_crit_edge ], [ %call347, %if.end344.do.body357_crit_edge ], [ %call353, %if.end350.do.body357_crit_edge ], [ -22, %if.end72.do.body357_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_t, %if.then369)) #4
          to label %cleanup [label %if.then369], !srcloc !47

if.then369:                                       ; preds = %do.body357
  call void @__sanitizer_cov_trace_pc() #6
  %dev370 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug292, ptr noundef %dev370, ptr noundef nonnull @.str.5, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then369, %do.body357, %if.end350.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end350.cleanup_crit_edge ], [ %ret.0, %if.then369 ], [ %ret.0, %do.body357 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tab) #4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %bw_params2) #4
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %bw_params1) #4
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
define dso_local i32 @cxd2820r_get_frontend_t(ptr nocapture noundef readonly %fe, ptr noundef writeonly %c) local_unnamed_addr #0 align 64 {
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
  store i32 -1, ptr %utmp, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf, align 1, !annotation !45
  %6 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend_t, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 8
  %call5 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 47, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body86_crit_edge

do.end.do.body86_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body86

if.end8:                                          ; preds = %do.end
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = lshr i8 %11, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %.not = icmp eq i8 %12, 3
  br i1 %.not, label %if.end8.sw.epilog_crit_edge, label %switch.lookup

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %13 = zext i8 %12 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.cxd2820r_get_frontend_t, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %modulation13 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %15 = ptrtoint ptr %modulation13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %switch.load, ptr %modulation13, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end8.sw.epilog_crit_edge
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %6, align 1
  %18 = lshr i8 %17, 1
  %19 = and i8 %18, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %switch = icmp ult i8 %19, 2
  br i1 %switch, label %sw.epilog21.sink.split, label %sw.epilog.sw.epilog21_crit_edge

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog21

sw.epilog21.sink.split:                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %and17 = zext i8 %19 to i32
  %transmission_mode20 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 6
  %20 = ptrtoint ptr %transmission_mode20 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and17, ptr %transmission_mode20, align 4
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %sw.epilog21.sink.split, %sw.epilog.sw.epilog21_crit_edge
  %21 = lshr i8 %17, 3
  %22 = and i8 %21, 3
  %and25 = zext i8 %22 to i32
  %guard_interval32 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 8
  %23 = ptrtoint ptr %guard_interval32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and25, ptr %guard_interval32, align 4
  %24 = lshr i8 %11, 3
  %25 = and i8 %24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %switch155 = icmp ult i8 %25, 4
  br i1 %switch155, label %sw.epilog45.sink.split, label %sw.epilog21.sw.epilog45_crit_edge

sw.epilog21.sw.epilog45_crit_edge:                ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog45

sw.epilog45.sink.split:                           ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #6
  %and37 = zext i8 %25 to i32
  %hierarchy44 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 9
  %26 = ptrtoint ptr %hierarchy44 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and37, ptr %hierarchy44, align 4
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %sw.epilog45.sink.split, %sw.epilog21.sw.epilog45_crit_edge
  %27 = and i8 %11, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %27)
  %28 = icmp ult i8 %27, 5
  br i1 %28, label %switch.lookup149, label %sw.epilog45.sw.epilog59_crit_edge

sw.epilog45.sw.epilog59_crit_edge:                ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog59

switch.lookup149:                                 ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #6
  %and49 = zext i8 %27 to i32
  %switch.gep150 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2820r_get_frontend_t.12, i32 0, i32 %and49
  %29 = ptrtoint ptr %switch.gep150 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load151 = load i32, ptr %switch.gep150, align 4
  %code_rate_HP58 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 11
  %30 = ptrtoint ptr %code_rate_HP58 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %switch.load151, ptr %code_rate_HP58, align 4
  br label %sw.epilog59

sw.epilog59:                                      ; preds = %switch.lookup149, %sw.epilog45.sw.epilog59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %17)
  %31 = icmp ult i8 %17, -96
  br i1 %31, label %switch.lookup152, label %sw.epilog59.sw.epilog73_crit_edge

sw.epilog59.sw.epilog73_crit_edge:                ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog73

switch.lookup152:                                 ; preds = %sw.epilog59
  call void @__sanitizer_cov_trace_pc() #6
  %32 = lshr i8 %17, 5
  %33 = zext i8 %32 to i32
  %switch.gep153 = getelementptr inbounds [5 x i32], ptr @switch.table.cxd2820r_get_frontend_t.13, i32 0, i32 %33
  %34 = ptrtoint ptr %switch.gep153 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load154 = load i32, ptr %switch.gep153, align 4
  %code_rate_LP72 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 12
  %35 = ptrtoint ptr %code_rate_LP72 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %switch.load154, ptr %code_rate_LP72, align 4
  br label %sw.epilog73

sw.epilog73:                                      ; preds = %switch.lookup152, %sw.epilog59.sw.epilog73_crit_edge
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 8
  %call76 = call i32 @regmap_read(ptr noundef %37, i32 noundef 1990, ptr noundef nonnull %utmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %sw.epilog73.do.body86_crit_edge

sw.epilog73.do.body86_crit_edge:                  ; preds = %sw.epilog73
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body86

if.end79:                                         ; preds = %sw.epilog73
  %38 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %utmp, align 4
  %40 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %trunc.not = icmp eq i32 %40, 0
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  br i1 %trunc.not, label %sw.bb82, label %sw.bb83

sw.bb82:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %inversion, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %inversion, align 4
  br label %cleanup

do.body86:                                        ; preds = %sw.epilog73.do.body86_crit_edge, %do.end.do.body86_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body86_crit_edge ], [ %call76, %sw.epilog73.do.body86_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend_t, %if.then98)) #4
          to label %cleanup [label %if.then98], !srcloc !47

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #6
  %dev99 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug294, ptr noundef %dev99, ptr noundef nonnull @.str.5, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.body86, %sw.bb83, %sw.bb82
  %retval.0 = phi i32 [ 0, %sw.bb83 ], [ 0, %sw.bb82 ], [ %ret.0, %if.then98 ], [ %ret.0, %do.body86 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_read_status_t(ptr nocapture noundef %fe, ptr nocapture noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !45
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !45
  %7 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !45
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 8
  %call = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 16, ptr noundef nonnull %buf, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body185_crit_edge

entry.do.body185_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 8
  %call7 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 115, ptr noundef %5, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.do.body185_crit_edge

if.end.do.body185_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf, align 1
  %15 = and i8 %14, 7
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %5, align 1
  %18 = lshr i8 %17, 3
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %15)
  %cmp = icmp ne i8 %15, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp17.not = icmp eq i8 %19, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp17.not
  %or.cond263 = select i1 %cmp, i1 %cmp17.not, i1 false
  %. = select i1 %or.cond263, i32 0, i32 15
  %.sink = select i1 %or.cond, i32 %., i32 31
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status_t.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status_t, %if.then32)) #4
          to label %do.end [label %if.then32], !srcloc !47

if.then32:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %and15 = zext i8 %19 to i32
  %and = zext i8 %15 to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status_t.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %22, i32 noundef 2, ptr noundef nonnull %buf, i32 noundef %and, i32 noundef %and15) #4
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end10
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status, align 4
  %and34 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else60, label %if.then36

if.then36:                                        ; preds = %do.end
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 8
  %call40 = call i32 @regmap_bulk_read(ptr noundef %26, i32 noundef 38, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup.thread, label %if.then36.do.body185_crit_edge

if.then36.do.body185_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

cleanup.thread:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %buf, align 1
  %conv45 = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv45, 8
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %conv47 = zext i8 %30 to i32
  %shl.masked = and i32 %shl, 3840
  %neg = or i32 %shl.masked, %conv47
  %and49 = xor i32 %neg, 4095
  %shl50 = shl nuw nsw i32 %and49, 4
  %shr51 = lshr i32 %and49, 8
  %or52 = or i32 %shl50, %shr51
  %strength53 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %31 = ptrtoint ptr %strength53 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %strength53, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %32 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 2, ptr %stat, align 1
  %conv56 = zext i32 %or52 to i64
  %33 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %conv56, ptr %33, align 1
  br label %if.end67

if.else60:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %strength61 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %35 = ptrtoint ptr %strength61 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %strength61, align 4
  %stat64 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %36 = ptrtoint ptr %stat64 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %stat64, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %cleanup.thread
  %37 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status, align 4
  %and68 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else108, label %if.then70

if.then70:                                        ; preds = %if.end67
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 8
  %call74 = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef 44, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %if.then70.do.body185_crit_edge

if.then70.do.body185_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

if.end77:                                         ; preds = %if.then70
  %41 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %buf, align 1
  %conv79 = zext i8 %42 to i32
  %shl80 = shl nuw nsw i32 %conv79, 8
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %5, align 1
  %conv82 = zext i8 %44 to i32
  %or84 = or i32 %shl80, %conv82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or84)
  %tobool85.not = icmp eq i32 %or84, 0
  br i1 %tobool85.not, label %if.end77.cleanup105.thread_crit_edge, label %if.then86

if.end77.cleanup105.thread_crit_edge:             ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup105.thread

if.then86:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  %call87 = call i32 @intlog10(i32 noundef %or84) #4
  %sub = sub nsw i32 32000, %or84
  %call88 = call i32 @intlog10(i32 noundef %sub) #4
  %sub89 = add i32 %call87, 55532585
  %add = sub i32 %sub89, %call88
  %conv90 = zext i32 %add to i64
  %mul = mul nuw nsw i64 %conv90, 10000
  %shr.i.i = lshr i64 %mul, 24
  %conv92 = trunc i64 %shr.i.i to i32
  br label %cleanup105.thread

cleanup105.thread:                                ; preds = %if.then86, %if.end77.cleanup105.thread_crit_edge
  %cnr.0 = phi i32 [ %conv92, %if.then86 ], [ 0, %if.end77.cleanup105.thread_crit_edge ]
  %cnr95 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %45 = ptrtoint ptr %cnr95 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %cnr95, align 1
  %stat98 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %46 = ptrtoint ptr %stat98 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %stat98, align 1
  %conv101 = zext i32 %cnr.0 to i64
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %conv101, ptr %47, align 1
  br label %if.end115

if.else108:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %cnr109 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %49 = ptrtoint ptr %cnr109 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %cnr109, align 1
  %stat112 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %50 = ptrtoint ptr %stat112 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %stat112, align 1
  br label %if.end115

if.end115:                                        ; preds = %if.else108, %cleanup105.thread
  %51 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status, align 4
  %and116 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else177, label %if.then118

if.then118:                                       ; preds = %if.end115
  %ber_running = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 10
  %53 = ptrtoint ptr %ber_running to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ber_running, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool119.not = icmp eq i8 %54, 0
  br i1 %tobool119.not, label %if.then118.if.then151_crit_edge, label %if.then120

if.then118.if.then151_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then151

if.then120:                                       ; preds = %if.then118
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 8
  %call124 = call i32 @regmap_bulk_read(ptr noundef %56, i32 noundef 118, ptr noundef nonnull %buf, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end127, label %if.then120.do.body185_crit_edge

if.then120.do.body185_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

if.end127:                                        ; preds = %if.then120
  %57 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %58)
  %tobool132.not = icmp sgt i8 %58, -1
  br i1 %tobool132.not, label %if.end127.cleanup173_crit_edge, label %if.then133

if.end127.cleanup173_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup173

if.then133:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #6
  %conv129 = zext i8 %58 to i32
  %shl136 = shl nuw nsw i32 %conv129, 16
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %5, align 1
  %conv138 = zext i8 %60 to i32
  %shl139 = shl nuw nsw i32 %conv138, 8
  %61 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %buf, align 1
  %conv142 = zext i8 %62 to i32
  %shl136.masked = and i32 %shl136, 983040
  %or140.masked = or i32 %shl139, %shl136.masked
  %and145 = or i32 %or140.masked, %conv142
  br label %if.then151

if.then151:                                       ; preds = %if.then133, %if.then118.if.then151_crit_edge
  %post_bit_error.0.ph = phi i32 [ 0, %if.then118.if.then151_crit_edge ], [ %and145, %if.then133 ]
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 8
  %call154 = call i32 @regmap_write(ptr noundef %64, i32 noundef 121, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool155.not = icmp eq i32 %call154, 0
  br i1 %tobool155.not, label %if.end157, label %if.then151.do.body185_crit_edge

if.then151.do.body185_crit_edge:                  ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

if.end157:                                        ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #6
  %65 = ptrtoint ptr %ber_running to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %ber_running, align 8
  br label %cleanup173

cleanup173:                                       ; preds = %if.end157, %if.end127.cleanup173_crit_edge
  %post_bit_error.0280 = phi i32 [ %post_bit_error.0.ph, %if.end157 ], [ 0, %if.end127.cleanup173_crit_edge ]
  %conv160 = zext i32 %post_bit_error.0280 to i64
  %post_bit_error161 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 9
  %66 = ptrtoint ptr %post_bit_error161 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %post_bit_error161, align 8
  %add162 = add i64 %67, %conv160
  store i64 %add162, ptr %post_bit_error161, align 8
  %post_bit_error163 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %68 = ptrtoint ptr %post_bit_error163 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %post_bit_error163, align 4
  %stat166 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %69 = ptrtoint ptr %stat166 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 3, ptr %stat166, align 1
  %70 = load i64, ptr %post_bit_error161, align 8
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %70, ptr %71, align 1
  br label %cleanup202

if.else177:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #6
  %post_bit_error178 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %73 = ptrtoint ptr %post_bit_error178 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %post_bit_error178, align 4
  %stat181 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %74 = ptrtoint ptr %stat181 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %stat181, align 1
  br label %cleanup202

do.body185:                                       ; preds = %if.then151.do.body185_crit_edge, %if.then120.do.body185_crit_edge, %if.then70.do.body185_crit_edge, %if.then36.do.body185_crit_edge, %if.end.do.body185_crit_edge, %entry.do.body185_crit_edge
  %ret.6 = phi i32 [ %call, %entry.do.body185_crit_edge ], [ %call7, %if.end.do.body185_crit_edge ], [ %call40, %if.then36.do.body185_crit_edge ], [ %call74, %if.then70.do.body185_crit_edge ], [ %call154, %if.then151.do.body185_crit_edge ], [ %call124, %if.then120.do.body185_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status_t.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status_t, %if.then197)) #4
          to label %cleanup202 [label %if.then197], !srcloc !47

if.then197:                                       ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #6
  %dev198 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status_t.__UNIQUE_ID_ddebug296, ptr noundef %dev198, ptr noundef nonnull @.str.5, i32 noundef %ret.6) #4
  br label %cleanup202

cleanup202:                                       ; preds = %if.then197, %do.body185, %if.else177, %cleanup173
  %retval.0 = phi i32 [ 0, %cleanup173 ], [ 0, %if.else177 ], [ %ret.6, %if.then197 ], [ %ret.6, %do.body185 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog10(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_init_t(ptr nocapture noundef readonly %fe) local_unnamed_addr #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_init_t.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_init_t, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_init_t.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 8
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 133, i32 noundef 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %do.body9

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_init_t.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_init_t, %if.then21)) #4
          to label %cleanup [label %if.then21], !srcloc !47

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_init_t.__UNIQUE_ID_ddebug298, ptr noundef %dev22, ptr noundef nonnull @.str.5, i32 noundef %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_sleep_t(ptr nocapture noundef readonly %fe) local_unnamed_addr #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep_t.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep_t, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep_t.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %delivery_system, align 8
  %call4 = tail call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %1, ptr noundef nonnull @cxd2820r_sleep_t.tab, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep_t.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep_t, %if.then20)) #4
          to label %cleanup [label %if.then20], !srcloc !47

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep_t.__UNIQUE_ID_ddebug300, ptr noundef %dev21, ptr noundef nonnull @.str.5, i32 noundef %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body8, %do.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cxd2820r_get_tune_settings_t(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %s) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %s, align 4
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 86, i32 3}
!8 = !{ptr @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug291, !7, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 122, i32 2}
!11 = !{ptr @cxd2820r_set_frontend_t.__UNIQUE_ID_ddebug292, !10, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 135, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug293, !13, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!16 = !{ptr @cxd2820r_get_frontend_t.__UNIQUE_ID_ddebug294, !17, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 243, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 277, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cxd2820r_read_status_t.__UNIQUE_ID_ddebug295, !19, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!22 = !{ptr @cxd2820r_read_status_t.__UNIQUE_ID_ddebug296, !23, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 368, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 378, i32 2}
!26 = !{ptr @cxd2820r_init_t.__UNIQUE_ID_ddebug297, !25, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!27 = !{ptr @cxd2820r_init_t.__UNIQUE_ID_ddebug298, !28, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 386, i32 2}
!29 = !{ptr @cxd2820r_sleep_t.tab, !30, !"tab", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 395, i32 29}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 403, i32 2}
!33 = !{ptr @cxd2820r_sleep_t.__UNIQUE_ID_ddebug299, !32, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!34 = !{ptr @cxd2820r_sleep_t.__UNIQUE_ID_ddebug300, !35, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/cxd2820r_t.c", i32 413, i32 2}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i8 0, i8 2}
!47 = !{i64 2148275098, i64 2148275103, i64 2148275116, i64 2148275160, i64 2148275194, i64 2148275215}
!48 = !{i64 814454, i64 814481}
!49 = !{i64 814964, i64 814991, i64 815025, i64 815046}
