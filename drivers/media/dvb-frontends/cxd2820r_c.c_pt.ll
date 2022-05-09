; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/cxd2820r_c.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/cxd2820r_c.c"
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

@cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cxd2820r\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2820r_set_frontend_c\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/dvb-frontends/cxd2820r_c.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"delivery_system=%d modulation=%d frequency=%u symbol_rate=%u inversion=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"if_frequency=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxd2820r_get_frontend_c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.5, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_read_status_c.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxd2820r_read_status_c\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"status=%02x raw=%*ph sync=%u ts=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@cxd2820r_read_status_c.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.5, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_init_c.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.7, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxd2820r_init_c\00", [16 x i8] zeroinitializer }, align 32
@cxd2820r_init_c.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.5, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cxd2820r_sleep_c.tab = internal constant { [5 x %struct.reg_val_mask], [56 x i8] } { [5 x %struct.reg_val_mask] [%struct.reg_val_mask { i32 255, i8 31, i8 -1 }, %struct.reg_val_mask { i32 133, i8 0, i8 -1 }, %struct.reg_val_mask { i32 136, i8 1, i8 -1 }, %struct.reg_val_mask { i32 129, i8 0, i8 -1 }, %struct.reg_val_mask { i32 128, i8 0, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@cxd2820r_sleep_c.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.7, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxd2820r_sleep_c\00", [47 x i8] zeroinitializer }, align 32
@cxd2820r_sleep_c.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.5, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 38, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 61, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 84, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 97, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 172, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 284, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 301, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [44 x i8] c"../drivers/media/dvb-frontends/cxd2820r_c.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 309, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @cxd2820r_sleep_c.tab, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxd2820r_sleep_c.tab to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_set_frontend_c(ptr noundef %fe) local_unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %if_frequency = alloca i32, align 4
  %tab = alloca [14 x %struct.reg_val_mask], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !45
  %5 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %if_frequency) #4
  %7 = ptrtoint ptr %if_frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %if_frequency, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %tab) #4
  %8 = getelementptr inbounds i8, ptr %tab, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 108)
  %10 = ptrtoint ptr %tab to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 128, ptr %tab, align 4
  %val = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 0, i32 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %val, align 4
  %arrayinit.element = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 129, ptr %arrayinit.element, align 4
  %val3 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 1, i32 1
  %13 = ptrtoint ptr %val3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %val3, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2
  %14 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 133, ptr %arrayinit.element5, align 4
  %val7 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 2, i32 1
  %15 = ptrtoint ptr %val7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %val7, align 4
  %arrayinit.element9 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3
  %16 = ptrtoint ptr %arrayinit.element9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 136, ptr %arrayinit.element9, align 4
  %val11 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 3, i32 1
  %17 = ptrtoint ptr %val11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %val11, align 4
  %arrayinit.element13 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4
  %18 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 130, ptr %arrayinit.element13, align 4
  %val15 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 1
  %19 = ptrtoint ptr %val15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %val15, align 4
  %mask16 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 4, i32 2
  %20 = ptrtoint ptr %mask16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 96, ptr %mask16, align 1
  %arrayinit.element17 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5
  %21 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65898, ptr %arrayinit.element17, align 4
  %val19 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 5, i32 1
  %22 = ptrtoint ptr %val19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 72, ptr %val19, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6
  %23 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 65701, ptr %arrayinit.element21, align 4
  %val23 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 1
  %24 = ptrtoint ptr %val23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %val23, align 4
  %mask24 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 6, i32 2
  %25 = ptrtoint ptr %mask24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %mask24, align 1
  %arrayinit.element25 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7
  %26 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65568, ptr %arrayinit.element25, align 4
  %val27 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 1
  %27 = ptrtoint ptr %val27 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 6, ptr %val27, align 4
  %mask28 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 7, i32 2
  %28 = ptrtoint ptr %mask28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 7, ptr %mask28, align 1
  %arrayinit.element29 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8
  %29 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 65625, ptr %arrayinit.element29, align 4
  %val31 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 8, i32 1
  %30 = ptrtoint ptr %val31 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 80, ptr %val31, align 4
  %arrayinit.element33 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9
  %31 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65671, ptr %arrayinit.element33, align 4
  %val35 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 1
  %32 = ptrtoint ptr %val35 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 12, ptr %val35, align 4
  %mask36 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 9, i32 2
  %33 = ptrtoint ptr %mask36 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 60, ptr %mask36, align 1
  %arrayinit.element37 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10
  %34 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 65675, ptr %arrayinit.element37, align 4
  %val39 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 10, i32 1
  %35 = ptrtoint ptr %val39 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 7, ptr %val39, align 4
  %arrayinit.element41 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11
  %36 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 65567, ptr %arrayinit.element41, align 4
  %val43 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 1
  %if_agc_polarity = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 6
  %37 = ptrtoint ptr %if_agc_polarity to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %if_agc_polarity, align 2, !range !46
  %39 = shl nuw i8 %38, 7
  %40 = ptrtoint ptr %val43 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %val43, align 4
  %mask45 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 11, i32 2
  %41 = ptrtoint ptr %mask45 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -128, ptr %mask45, align 1
  %arrayinit.element46 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12
  %42 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65648, ptr %arrayinit.element46, align 4
  %val48 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 12, i32 1
  %ts_mode = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ts_mode, align 4
  %45 = ptrtoint ptr %val48 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %val48, align 4
  %arrayinit.element50 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13
  %46 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65649, ptr %arrayinit.element50, align 4
  %val52 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 1
  %ts_clk_inv = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %ts_clk_inv to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ts_clk_inv, align 1, !range !46
  %49 = shl nuw nsw i8 %48, 4
  %50 = xor i8 %49, 16
  %51 = ptrtoint ptr %val52 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %val52, align 4
  %mask56 = getelementptr inbounds %struct.reg_val_mask, ptr %tab, i32 13, i32 2
  %52 = ptrtoint ptr %mask56 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 16, ptr %mask56, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_c, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %53 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %delivery_system, align 4
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %modulation, align 4
  %57 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dtv_property_cache, align 4
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %59 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %symbol_rate, align 4
  %inversion = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %61 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %inversion, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %63 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %set_params, align 4
  %tobool63.not = icmp eq ptr %64, null
  br i1 %tobool63.not, label %do.end.if.end69_crit_edge, label %if.then64

do.end.if.end69_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then64:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call68 = tail call i32 %64(ptr noundef %fe) #4
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %do.end.if.end69_crit_edge
  %delivery_system70 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %65 = ptrtoint ptr %delivery_system70 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %delivery_system70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp.not = icmp eq i32 %66, 1
  br i1 %cmp.not, label %if.end69.if.end77_crit_edge, label %if.then72

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.then72:                                        ; preds = %if.end69
  %call73 = call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %1, ptr noundef nonnull %tab, i32 noundef 14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.then72.if.end77_crit_edge, label %if.then72.do.body335_crit_edge

if.then72.do.body335_crit_edge:                   ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body335

if.then72.if.end77_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end77

if.end77:                                         ; preds = %if.then72.if.end77_crit_edge, %if.end69.if.end77_crit_edge
  %67 = ptrtoint ptr %delivery_system70 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %delivery_system70, align 8
  %ber_running = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 10
  %68 = ptrtoint ptr %ber_running to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %ber_running, align 8
  %get_if_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 11
  %69 = ptrtoint ptr %get_if_frequency to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %get_if_frequency, align 4
  %tobool81.not = icmp eq ptr %70, null
  br i1 %tobool81.not, label %if.end77.do.body335_crit_edge, label %if.then82

if.end77.do.body335_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body335

if.then82:                                        ; preds = %if.end77
  %call86 = call i32 %70(ptr noundef %fe, ptr noundef nonnull %if_frequency) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %do.body90, label %if.then82.do.body335_crit_edge

if.then82.do.body335_crit_edge:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body335

do.body90:                                        ; preds = %if.then82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_c, %if.then102)) #4
          to label %if.end304 [label %if.then102], !srcloc !47

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #6
  %dev103 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %71 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %if_frequency, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug291, ptr noundef %dev103, ptr noundef nonnull @.str.4, i32 noundef %72) #4
  br label %if.end304

if.end304:                                        ; preds = %if.then102, %do.body90
  %73 = ptrtoint ptr %if_frequency to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %if_frequency, align 4
  %conv108 = zext i32 %74 to i64
  %mul = shl nuw nsw i64 %conv108, 14
  %add = add nuw nsw i64 %mul, 20500000
  %75 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 1887103718422835785, i64 %add) #7, !srcloc !48
  %76 = call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 1887103718422835785, i64 %add, i64 %75) #7, !srcloc !49
  %div280471 = lshr i64 %76, 22
  %extract.t472 = trunc i64 %div280471 to i32
  %conv308 = sub i32 16384, %extract.t472
  %shr309 = lshr i32 %conv308, 8
  %conv311 = trunc i32 %shr309 to i8
  %77 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv311, ptr %buf, align 1
  %conv315 = trunc i32 %conv308 to i8
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv315, ptr %5, align 1
  %regmap = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 1
  %arrayidx317 = getelementptr %struct.cxd2820r_priv, ptr %1, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx317, align 4
  %call319 = call i32 @regmap_bulk_write(ptr noundef %80, i32 noundef 66, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call319)
  %tobool320.not = icmp eq i32 %call319, 0
  br i1 %tobool320.not, label %if.end322, label %if.end304.do.body335_crit_edge

if.end304.do.body335_crit_edge:                   ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body335

if.end322:                                        ; preds = %if.end304
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 8
  %call325 = call i32 @regmap_write(ptr noundef %82, i32 noundef 255, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %tobool326.not = icmp eq i32 %call325, 0
  br i1 %tobool326.not, label %if.end328, label %if.end322.do.body335_crit_edge

if.end322.do.body335_crit_edge:                   ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body335

if.end328:                                        ; preds = %if.end322
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 8
  %call331 = call i32 @regmap_write(ptr noundef %84, i32 noundef 254, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.end328.cleanup_crit_edge, label %if.end328.do.body335_crit_edge

if.end328.do.body335_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body335

if.end328.cleanup_crit_edge:                      ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body335:                                       ; preds = %if.end328.do.body335_crit_edge, %if.end322.do.body335_crit_edge, %if.end304.do.body335_crit_edge, %if.then82.do.body335_crit_edge, %if.end77.do.body335_crit_edge, %if.then72.do.body335_crit_edge
  %ret.0 = phi i32 [ %call73, %if.then72.do.body335_crit_edge ], [ %call86, %if.then82.do.body335_crit_edge ], [ %call319, %if.end304.do.body335_crit_edge ], [ %call325, %if.end322.do.body335_crit_edge ], [ %call331, %if.end328.do.body335_crit_edge ], [ -22, %if.end77.do.body335_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_set_frontend_c, %if.then347)) #4
          to label %cleanup [label %if.then347], !srcloc !47

if.then347:                                       ; preds = %do.body335
  call void @__sanitizer_cov_trace_pc() #6
  %dev348 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug292, ptr noundef %dev348, ptr noundef nonnull @.str.5, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then347, %do.body335, %if.end328.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end328.cleanup_crit_edge ], [ %ret.0, %if.then347 ], [ %ret.0, %do.body335 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %tab) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %if_frequency) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #4
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
define dso_local i32 @cxd2820r_get_frontend_c(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %c) local_unnamed_addr #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend_c, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx4 = getelementptr %struct.cxd2820r_priv, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %call5 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 26, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body33_crit_edge

do.end.do.body33_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body33

if.end8:                                          ; preds = %do.end
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf, align 1
  %12 = and i8 %11, 15
  %and = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %and, 8
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %6, align 1
  %conv11 = zext i8 %14 to i32
  %or = or i32 %shl, %conv11
  %mul = mul nuw nsw i32 %or, 2500
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 10
  %15 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %symbol_rate, align 4
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %call14 = call i32 @regmap_read(ptr noundef %17, i32 noundef 25, ptr noundef nonnull %utmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.do.body33_crit_edge

if.end8.do.body33_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body33

if.end17:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %utmp, align 4
  %and18 = and i32 %19, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and18)
  %20 = icmp ult i32 %and18, 5
  br i1 %20, label %switch.lookup, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %switch.offset = add nuw nsw i32 %and18, 1
  %modulation26 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 1
  %21 = ptrtoint ptr %modulation26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.offset, ptr %modulation26, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end17.sw.epilog_crit_edge
  %22 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %trunc.not = icmp eq i32 %22, 0
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %c, i32 0, i32 4
  br i1 %trunc.not, label %sw.bb29, label %sw.bb30

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %inversion, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %inversion, align 4
  br label %cleanup

do.body33:                                        ; preds = %if.end8.do.body33_crit_edge, %do.end.do.body33_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body33_crit_edge ], [ %call14, %if.end8.do.body33_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_get_frontend_c, %if.then45)) #4
          to label %cleanup [label %if.then45], !srcloc !47

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  %dev46 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug294, ptr noundef %dev46, ptr noundef nonnull @.str.5, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %sw.bb30, %sw.bb29
  %retval.0 = phi i32 [ 0, %sw.bb30 ], [ 0, %sw.bb29 ], [ %ret.0, %if.then45 ], [ %ret.0, %do.body33 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_read_status_c(ptr nocapture noundef %fe, ptr nocapture noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %utmp = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %utmp) #4
  %4 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %utmp, align 4, !annotation !45
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
  %arrayidx2 = getelementptr %struct.cxd2820r_priv, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %11, i32 noundef 136, ptr noundef nonnull %buf, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.do.body191_crit_edge

entry.do.body191_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx2, align 4
  %call7 = call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 115, ptr noundef %6, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.do.body191_crit_edge

if.end.do.body191_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

if.end10:                                         ; preds = %if.end
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buf, align 1
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %6, align 1
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp17.not = icmp eq i8 %20, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp17.not
  %or.cond265 = select i1 %cmp.not, i1 %cmp17.not, i1 false
  %.290 = select i1 %or.cond265, i32 0, i32 15
  %.sink = select i1 %or.cond, i32 %.290, i32 31
  %21 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status_c.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status_c, %if.then32)) #4
          to label %do.end [label %if.then32], !srcloc !47

if.then32:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %and15 = zext i8 %20 to i32
  %and = zext i8 %16 to i32
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status_c.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %23, i32 noundef 2, ptr noundef nonnull %buf, i32 noundef %and, i32 noundef %and15) #4
  br label %do.end

do.end:                                           ; preds = %if.then32, %if.end10
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %and34 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else60, label %if.then36

if.then36:                                        ; preds = %do.end
  %26 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx2, align 4
  %call40 = call i32 @regmap_bulk_read(ptr noundef %27, i32 noundef 73, ptr noundef nonnull %buf, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cleanup.thread, label %if.then36.do.body191_crit_edge

if.then36.do.body191_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

cleanup.thread:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf, align 1
  %conv45 = zext i8 %29 to i32
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %6, align 1
  %conv47 = zext i8 %31 to i32
  %32 = shl i32 %conv45, 30
  %33 = shl nuw nsw i32 %conv47, 22
  %shl.i = or i32 %33, %32
  %shr.i = ashr exact i32 %shl.i, 22
  %sub = sub nsw i32 511, %shr.i
  %34 = ptrtoint ptr %utmp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %utmp, align 4
  %shl50 = shl nuw nsw i32 %sub, 6
  %shr51 = lshr i32 %sub, 4
  %or52 = or i32 %shl50, %shr51
  %strength53 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %35 = ptrtoint ptr %strength53 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %strength53, align 4
  %stat = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %36 = ptrtoint ptr %stat to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %stat, align 1
  %conv56 = zext i32 %or52 to i64
  %37 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %conv56, ptr %37, align 1
  br label %if.end67

if.else60:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %strength61 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42
  %39 = ptrtoint ptr %strength61 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %strength61, align 4
  %stat64 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 42, i32 1
  %40 = ptrtoint ptr %stat64 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %stat64, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.else60, %cleanup.thread
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %status, align 4
  %and68 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.else115, label %if.then70

if.then70:                                        ; preds = %if.end67
  %43 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx2, align 4
  %call73 = call i32 @regmap_read(ptr noundef %44, i32 noundef 25, ptr noundef nonnull %utmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then70.do.body191_crit_edge

if.then70.do.body191_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

if.end76:                                         ; preds = %if.then70
  %45 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %utmp, align 4
  %rem = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool79.not = icmp eq i32 %rem, 0
  %. = select i1 %tobool79.not, i32 9500, i32 8750
  %.267 = select i1 %tobool79.not, i32 760, i32 650
  %47 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx2, align 4
  %call85 = call i32 @regmap_read(ptr noundef %48, i32 noundef 77, ptr noundef nonnull %utmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end76.do.body191_crit_edge

if.end76.do.body191_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

if.end88:                                         ; preds = %if.end76
  %49 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %utmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool89.not = icmp eq i32 %50, 0
  br i1 %tobool89.not, label %if.end88.cleanup110_crit_edge, label %if.then90

if.end88.cleanup110_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup110

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  %call91 = call i32 @intlog2(i32 noundef %.267) #4
  %51 = ptrtoint ptr %utmp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %utmp, align 4
  %call92 = call i32 @intlog2(i32 noundef %52) #4
  %sub93 = sub i32 %call91, %call92
  %conv94 = zext i32 %sub93 to i64
  %conv95 = zext i32 %. to i64
  %mul = mul nuw nsw i64 %conv94, %conv95
  %53 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 3196577203974196565, i64 %mul) #7, !srcloc !48
  %54 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 3196577203974196565, i64 %mul, i64 %53, i32 0) #7, !srcloc !50
  %asmresult10.i.i.i = extractvalue { i64, i32 } %54, 0
  %div1581.i.i = lshr i64 %asmresult10.i.i.i, 22
  %conv97 = trunc i64 %div1581.i.i to i32
  br label %cleanup110

cleanup110:                                       ; preds = %if.then90, %if.end88.cleanup110_crit_edge
  %cnr.0 = phi i32 [ %conv97, %if.then90 ], [ 0, %if.end88.cleanup110_crit_edge ]
  %cnr100 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %55 = ptrtoint ptr %cnr100 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %cnr100, align 1
  %stat103 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %56 = ptrtoint ptr %stat103 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %stat103, align 1
  %conv106 = zext i32 %cnr.0 to i64
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 %conv106, ptr %57, align 1
  br label %if.end122

if.else115:                                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #6
  %cnr116 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43
  %59 = ptrtoint ptr %cnr116 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %cnr116, align 1
  %stat119 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 43, i32 1
  %60 = ptrtoint ptr %stat119 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %stat119, align 1
  br label %if.end122

if.end122:                                        ; preds = %if.else115, %cleanup110
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status, align 4
  %and123 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and123)
  %tobool124.not = icmp eq i32 %and123, 0
  br i1 %tobool124.not, label %if.else183, label %if.then125

if.then125:                                       ; preds = %if.end122
  %ber_running = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 10
  %63 = ptrtoint ptr %ber_running to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %ber_running, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool126.not = icmp eq i8 %64, 0
  br i1 %tobool126.not, label %if.then125.if.then158_crit_edge, label %if.then127

if.then125.if.then158_crit_edge:                  ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then158

if.then127:                                       ; preds = %if.then125
  %65 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx2, align 4
  %call131 = call i32 @regmap_bulk_read(ptr noundef %66, i32 noundef 118, ptr noundef nonnull %buf, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.then127.do.body191_crit_edge

if.then127.do.body191_crit_edge:                  ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

if.end134:                                        ; preds = %if.then127
  %67 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %tobool139.not = icmp sgt i8 %68, -1
  br i1 %tobool139.not, label %if.end134.cleanup179_crit_edge, label %if.then140

if.end134.cleanup179_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup179

if.then140:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #6
  %conv136 = zext i8 %68 to i32
  %shl143 = shl nuw nsw i32 %conv136, 16
  %69 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %6, align 1
  %conv145 = zext i8 %70 to i32
  %shl146 = shl nuw nsw i32 %conv145, 8
  %71 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %buf, align 1
  %conv149 = zext i8 %72 to i32
  %shl143.masked = and i32 %shl143, 983040
  %or147.masked = or i32 %shl146, %shl143.masked
  %and152 = or i32 %or147.masked, %conv149
  br label %if.then158

if.then158:                                       ; preds = %if.then140, %if.then125.if.then158_crit_edge
  %post_bit_error.0.ph = phi i32 [ 0, %if.then125.if.then158_crit_edge ], [ %and152, %if.then140 ]
  %73 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx2, align 4
  %call161 = call i32 @regmap_write(ptr noundef %74, i32 noundef 121, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.end164, label %if.then158.do.body191_crit_edge

if.then158.do.body191_crit_edge:                  ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body191

if.end164:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %ber_running to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %ber_running, align 8
  br label %cleanup179

cleanup179:                                       ; preds = %if.end164, %if.end134.cleanup179_crit_edge
  %post_bit_error.0284 = phi i32 [ %post_bit_error.0.ph, %if.end164 ], [ 0, %if.end134.cleanup179_crit_edge ]
  %conv167 = zext i32 %post_bit_error.0284 to i64
  %post_bit_error168 = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 9
  %76 = ptrtoint ptr %post_bit_error168 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %post_bit_error168, align 8
  %add = add i64 %77, %conv167
  store i64 %add, ptr %post_bit_error168, align 8
  %post_bit_error169 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %78 = ptrtoint ptr %post_bit_error169 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %post_bit_error169, align 4
  %stat172 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %79 = ptrtoint ptr %stat172 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %stat172, align 1
  %80 = load i64, ptr %post_bit_error168, align 8
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1, i32 0, i32 1
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_storeN_noabort(i32 %82, i32 8)
  store i64 %80, ptr %81, align 1
  br label %cleanup208

if.else183:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #6
  %post_bit_error184 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46
  %83 = ptrtoint ptr %post_bit_error184 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %post_bit_error184, align 4
  %stat187 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 46, i32 1
  %84 = ptrtoint ptr %stat187 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %stat187, align 1
  br label %cleanup208

do.body191:                                       ; preds = %if.then158.do.body191_crit_edge, %if.then127.do.body191_crit_edge, %if.end76.do.body191_crit_edge, %if.then70.do.body191_crit_edge, %if.then36.do.body191_crit_edge, %if.end.do.body191_crit_edge, %entry.do.body191_crit_edge
  %ret.7 = phi i32 [ %call, %entry.do.body191_crit_edge ], [ %call7, %if.end.do.body191_crit_edge ], [ %call40, %if.then36.do.body191_crit_edge ], [ %call85, %if.end76.do.body191_crit_edge ], [ %call73, %if.then70.do.body191_crit_edge ], [ %call161, %if.then158.do.body191_crit_edge ], [ %call131, %if.then127.do.body191_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_read_status_c.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_read_status_c, %if.then203)) #4
          to label %cleanup208 [label %if.then203], !srcloc !47

if.then203:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #6
  %dev204 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_read_status_c.__UNIQUE_ID_ddebug296, ptr noundef %dev204, ptr noundef nonnull @.str.5, i32 noundef %ret.7) #4
  br label %cleanup208

cleanup208:                                       ; preds = %if.then203, %do.body191, %if.else183, %cleanup179
  %retval.0 = phi i32 [ 0, %cleanup179 ], [ 0, %if.else183 ], [ %ret.7, %if.then203 ], [ %ret.7, %do.body191 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %utmp) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @intlog2(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_init_c(ptr nocapture noundef readonly %fe) local_unnamed_addr #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_init_c.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_init_c, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_init_c.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_init_c.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_init_c, %if.then21)) #4
          to label %cleanup [label %if.then21], !srcloc !47

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_init_c.__UNIQUE_ID_ddebug298, ptr noundef %dev22, ptr noundef nonnull @.str.5, i32 noundef %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %do.body9, %do.end.cleanup_crit_edge
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxd2820r_sleep_c(ptr nocapture noundef readonly %fe) local_unnamed_addr #0 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep_c.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep_c, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep_c.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %delivery_system = getelementptr inbounds %struct.cxd2820r_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %delivery_system to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %delivery_system, align 8
  %call4 = tail call i32 @cxd2820r_wr_reg_val_mask_tab(ptr noundef %1, ptr noundef nonnull @cxd2820r_sleep_c.tab, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cxd2820r_sleep_c.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cxd2820r_sleep_c, %if.then20)) #4
          to label %cleanup [label %if.then20], !srcloc !47

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %dev21 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cxd2820r_sleep_c.__UNIQUE_ID_ddebug300, ptr noundef %dev21, ptr noundef nonnull @.str.5, i32 noundef %call4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body8, %do.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @cxd2820r_get_tune_settings_c(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %s) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %s to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 500, ptr %s, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %s, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !29, !31, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 38, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug290, !1, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 61, i32 3}
!8 = !{ptr @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug291, !7, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 84, i32 2}
!11 = !{ptr @cxd2820r_set_frontend_c.__UNIQUE_ID_ddebug292, !10, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 97, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug293, !13, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!16 = !{ptr @cxd2820r_get_frontend_c.__UNIQUE_ID_ddebug294, !17, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 138, i32 2}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 172, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cxd2820r_read_status_c.__UNIQUE_ID_ddebug295, !19, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!22 = !{ptr @cxd2820r_read_status_c.__UNIQUE_ID_ddebug296, !23, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!23 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 274, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 284, i32 2}
!26 = !{ptr @cxd2820r_init_c.__UNIQUE_ID_ddebug297, !25, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!27 = !{ptr @cxd2820r_init_c.__UNIQUE_ID_ddebug298, !28, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 292, i32 2}
!29 = !{ptr @cxd2820r_sleep_c.tab, !30, !"tab", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 301, i32 35}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 309, i32 2}
!33 = !{ptr @cxd2820r_sleep_c.__UNIQUE_ID_ddebug299, !32, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!34 = !{ptr @cxd2820r_sleep_c.__UNIQUE_ID_ddebug300, !35, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/cxd2820r_c.c", i32 319, i32 2}
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
!47 = !{i64 2148273420, i64 2148273425, i64 2148273438, i64 2148273482, i64 2148273516, i64 2148273537}
!48 = !{i64 812776, i64 812803}
!49 = !{i64 813286, i64 813313, i64 813347, i64 813368}
!50 = !{i64 813471, i64 813498, i64 813531, i64 813552, i64 813579, i64 813605}
