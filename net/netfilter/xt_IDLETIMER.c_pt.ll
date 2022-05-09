; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_IDLETIMER.c_pt.bc'
source_filename = "../net/netfilter/xt_IDLETIMER.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.114, %union.anon.115, ptr, i32, i16, i8 }
%union.anon.114 = type { ptr }
%union.anon.115 = type { ptr }
%struct.idletimer_tg_info = type { i32, [28 x i8], ptr, [4 x i8] }
%struct.idletimer_tg = type { %struct.list_head, %struct.alarm, %struct.timer_list, %struct.work_struct, ptr, %struct.device_attribute, i32, i8 }
%struct.alarm = type { %struct.timerqueue_node, %struct.hrtimer, ptr, i32, i32, ptr }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.idletimer_tg_info_v1 = type { i32, [28 x i8], i8, i8, [6 x i8], ptr, [4 x i8] }
%struct.timespec64 = type { i64, i32 }

@idletimer_tg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"IDLETIMER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @idletimer_tg_target, ptr @idletimer_tg_checkentry, ptr @idletimer_tg_destroy, ptr null, ptr null, i32 40, i32 32, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"IDLETIMER\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @idletimer_tg_target_v1, ptr @idletimer_tg_checkentry_v1, ptr @idletimer_tg_destroy_v1, ptr null, ptr null, i32 48, i32 40, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@idletimer_tg_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_xt_IDLETIMER__384_534_idletimer_tg_init6 = internal global ptr @idletimer_tg_init, section ".initcall6.init", align 4
@__exitcall_idletimer_tg_exit = internal global ptr @idletimer_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author385 = internal constant [58 x i8] c"xt_IDLETIMER.author=Timo Teras <ext-timo.teras@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author386 = internal constant [62 x i8] c"xt_IDLETIMER.author=Luciano Coelho <luciano.coelho@nokia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description387 = internal constant [52 x i8] c"xt_IDLETIMER.description=Xtables: idle time monitor\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [45 x i8] c"xt_IDLETIMER.file=net/netfilter/xt_IDLETIMER\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [28 x i8] c"xt_IDLETIMER.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias390 = internal constant [33 x i8] c"xt_IDLETIMER.alias=ipt_IDLETIMER\00", section ".modinfo", align 1
@__UNIQUE_ID_alias391 = internal constant [34 x i8] c"xt_IDLETIMER.alias=ip6t_IDLETIMER\00", section ".modinfo", align 1
@idletimer_tg_target.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xt_IDLETIMER\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idletimer_tg_target\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/xt_IDLETIMER.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"resetting timer %s, timeout period %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"xt_IDLETIMER: resetting timer %s, timeout period %u\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@idletimer_tg_checkentry.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idletimer_tg_checkentry\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"checkentry targinfo%s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xt_IDLETIMER: checkentry targinfo%s\0A\00", [59 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"checkentry helper return invalid\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"xt_IDLETIMER: checkentry helper return invalid\0A\00", [48 x i8] zeroinitializer }, align 32
@list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @list_mutex, i64 52), ptr getelementptr (i8, ptr @list_mutex, i64 52) }, ptr @list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.22, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.10, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"increased refcnt of timer %s to %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xt_IDLETIMER: increased refcnt of timer %s to %u\0A\00", [46 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.12, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to create timer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"xt_IDLETIMER: failed to create timer\0A\00", [58 x i8] zeroinitializer }, align 32
@idletimer_tg_helper.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idletimer_tg_helper\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timeout value is zero\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xt_IDLETIMER: timeout value is zero\0A\00", [59 x i8] zeroinitializer }, align 32
@idletimer_tg_helper.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.17, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"timeout value is too big\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"xt_IDLETIMER: timeout value is too big\0A\00", [56 x i8] zeroinitializer }, align 32
@idletimer_tg_helper.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.19, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"label is empty or not nul-terminated\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"xt_IDLETIMER: label is empty or not nul-terminated\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"list_mutex.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"list_mutex\00", [21 x i8] zeroinitializer }, align 32
@idletimer_tg_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @idletimer_tg_list, ptr @idletimer_tg_list }, [24 x i8] zeroinitializer }, align 32
@idletimer_tg_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@idletimer_tg_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@idletimer_tg_create.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"idletimer_tg_create\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"couldn't add file to sysfs\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"xt_IDLETIMER: couldn't add file to sysfs\00", [55 x i8] zeroinitializer }, align 32
@idletimer_tg_create.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&info->timer->timer)\00", [42 x i8] zeroinitializer }, align 32
@idletimer_tg_create.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&info->timer->work)\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"subsystem\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uevent\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@idletimer_tg_expired.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idletimer_tg_expired\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timer %s expired\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xt_IDLETIMER: timer %s expired\0A\00", [32 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@idletimer_tg_destroy.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idletimer_tg_destroy\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"destroy targinfo %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"xt_IDLETIMER: destroy targinfo %s\0A\00", [61 x i8] zeroinitializer }, align 32
@idletimer_tg_destroy.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"deleting timer %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"xt_IDLETIMER: deleting timer %s\0A\00", [63 x i8] zeroinitializer }, align 32
@idletimer_tg_destroy.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.43, i8 0, i8 105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"decreased refcnt of timer %s to %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"xt_IDLETIMER: decreased refcnt of timer %s to %u\0A\00", [46 x i8] zeroinitializer }, align 32
@idletimer_tg_target_v1.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.3, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idletimer_tg_target_v1\00", [41 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.6, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"idletimer_tg_checkentry_v1\00", [37 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.8, i8 0, i8 88, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid value for timer type\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"xt_IDLETIMER: invalid value for timer type\0A\00", [52 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.49, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"Adding/Replacing rule with same label and different timer type is not allowed\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"xt_IDLETIMER: Adding/Replacing rule with same label and different timer type is not allowed\0A\00", [35 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.51, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"time_expiry_remaining %lld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"xt_IDLETIMER: time_expiry_remaining %lld\0A\00", [54 x i8] zeroinitializer }, align 32
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.10, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.12, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@idletimer_tg_create_v1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@idletimer_tg_create_v1.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.24, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idletimer_tg_create_v1\00", [41 x i8] zeroinitializer }, align 32
@idletimer_tg_create_v1.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"timer type value is %u\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"xt_IDLETIMER: timer type value is %u\00", [59 x i8] zeroinitializer }, align 32
@idletimer_tg_create_v1.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@idletimer_tg_create_v1.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@idletimer_tg_alarmproc.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"idletimer_tg_alarmproc\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"alarm %s expired\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"xt_IDLETIMER: alarm %s expired\0A\00", [32 x i8] zeroinitializer }, align 32
@idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.39, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"idletimer_tg_destroy_v1\00", [40 x i8] zeroinitializer }, align 32
@idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.41, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.2, ptr @.str.43, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@idletimer_tg_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xt_idletimer\00", [19 x i8] zeroinitializer }, align 32
@idletimer_tg_init.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idletimer_tg_init\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"couldn't register device class\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"xt_IDLETIMER: couldn't register device class\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@idletimer_tg_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@idletimer_tg_init.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.67, i8 0, i8 126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"couldn't register system device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"xt_IDLETIMER: couldn't register system device\0A\00", [49 x i8] zeroinitializer }, align 32
@idletimer_tg_init.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.69, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"couldn't register xt target\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"xt_IDLETIMER: couldn't register xt target\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"idletimer_tg_class\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 485, i32 22 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 255, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 311, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 316, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"list_mutex\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 327, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 332, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 289, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 293, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 299, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 46, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"idletimer_tg_list\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 45, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 150, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"idletimer_tg_kobj\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 48, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 161, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 167, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 170, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 128, i32 20 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 129, i32 20 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 130, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 88, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 90, i32 25 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 105, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 408, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 413, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 422, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 272, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 347, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 360, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 369, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 381, i32 5 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 199, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 210, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 218, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 222, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 232, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 115, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 433, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 493, i32 23 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 496, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 501, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"idletimer_tg_device\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 487, i32 23 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 504, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [32 x i8] c"../net/netfilter/xt_IDLETIMER.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 513, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_alias390, ptr @__UNIQUE_ID_alias391, ptr @__UNIQUE_ID_author385, ptr @__UNIQUE_ID_author386, ptr @__UNIQUE_ID_description387, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__exitcall_idletimer_tg_exit, ptr @__initcall__kmod_xt_IDLETIMER__384_534_idletimer_tg_init6, ptr @idletimer_tg_exit, ptr @idletimer_tg_class, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @list_mutex, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @idletimer_tg_list, ptr @idletimer_tg_create.__key, ptr @idletimer_tg_kobj, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @idletimer_tg_create.__key.26, ptr @.str.27, ptr @idletimer_tg_create.__key.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @idletimer_tg_create_v1.__key, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @idletimer_tg_create_v1.__key.56, ptr @idletimer_tg_create_v1.__key.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @idletimer_tg_init.__key, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @idletimer_tg_device, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_create.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_create.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_create_v1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_create_v1.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_create_v1.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idletimer_tg_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @idletimer_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_targets(ptr noundef nonnull @idletimer_tg, i32 noundef 2) #6
  %0 = load ptr, ptr @idletimer_tg_class, align 4
  tail call void @device_destroy(ptr noundef %0, i32 noundef 0) #6
  %1 = load ptr, ptr @idletimer_tg_class, align 4
  tail call void @class_destroy(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @idletimer_tg_init.__key) #6
  store ptr %call, ptr @idletimer_tg_class, align 4
  %0 = ptrtoint ptr %call to i32
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_init.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_init, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !185

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_init.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.65) #6
  br label %cleanup

if.end8:                                          ; preds = %entry
  %call9 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %call, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.66) #6
  store ptr %call9, ptr @idletimer_tg_device, align 4
  %1 = ptrtoint ptr %call9 to i32
  %cmp.i56 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %do.body13, label %if.end29

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_init.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_init, %if.then25)) #6
          to label %out_class [label %if.then25], !srcloc !185

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_init.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.68) #6
  br label %out_class

if.end29:                                         ; preds = %if.end8
  store ptr %call9, ptr @idletimer_tg_kobj, align 4
  %call30 = tail call i32 @xt_register_targets(ptr noundef nonnull @idletimer_tg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  br i1 %cmp, label %do.body32, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body32:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_init.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_init, %if.then44)) #6
          to label %out_dev [label %if.then44], !srcloc !185

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_init.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.70) #6
  br label %out_dev

out_dev:                                          ; preds = %if.then44, %do.body32
  %2 = load ptr, ptr @idletimer_tg_class, align 4
  tail call void @device_destroy(ptr noundef %2, i32 noundef 0) #6
  br label %out_class

out_class:                                        ; preds = %out_dev, %if.then25, %do.body13
  %err.0 = phi i32 [ %1, %if.then25 ], [ %call30, %out_dev ], [ %1, %do.body13 ]
  %3 = load ptr, ptr @idletimer_tg_class, align 4
  tail call void @class_destroy(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %out_class, %if.end29.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %if.end29.cleanup_crit_edge ], [ %0, %if.then7 ], [ %err.0, %out_class ], [ %0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_target(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_target.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_target, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %label = getelementptr inbounds %struct.idletimer_tg_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_target.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.4, ptr noundef %label, i32 noundef %4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.idletimer_tg_info, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 8
  %mul = mul i32 %8, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  %timer3 = getelementptr inbounds %struct.idletimer_tg, ptr %6, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %9, %call2.i
  %call6 = tail call i32 @mod_timer(ptr noundef %timer3, i32 noundef %add) #6
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %label = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.7, ptr noundef %label) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i97 = icmp eq i32 %3, 0
  br i1 %cmp.i97, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then3.i)) #6
          to label %do.body5 [label %if.then3.i], !srcloc !185

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_helper.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.16) #6
  br label %do.body5

if.end4.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147482, i32 %3)
  %cmp6.i = icmp ugt i32 %3, 2147482
  br i1 %cmp6.i, label %do.body8.i, label %if.end23.i

do.body8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then20.i)) #6
          to label %do.body5 [label %if.then20.i], !srcloc !185

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_helper.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.18) #6
  br label %do.body5

if.end23.i:                                       ; preds = %if.end4.i
  %label.i = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %label.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp24.i = icmp eq i8 %5, 0
  br i1 %cmp24.i, label %if.end23.i.do.body31.i_crit_edge, label %lor.lhs.false.i

if.end23.i.do.body31.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %call27.i = tail call i32 @strnlen(ptr noundef %label.i, i32 noundef 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 28
  br i1 %cmp28.i, label %lor.lhs.false.i.do.body31.i_crit_edge, label %if.end21

lor.lhs.false.i.do.body31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

do.body31.i:                                      ; preds = %lor.lhs.false.i.do.body31.i_crit_edge, %if.end23.i.do.body31.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then43.i)) #6
          to label %do.body5 [label %if.then43.i], !srcloc !185

if.then43.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_helper.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.20) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then43.i, %do.body31.i, %if.then20.i, %do.body8.i, %if.then3.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !185

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false.i
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end21
  %entry1.0.in.i = phi ptr [ @idletimer_tg_list, %if.end21 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @idletimer_tg_list
  br i1 %cmp.not.i, label %__idletimer_tg_find_by_label.exit.thread, label %for.body.i

__idletimer_tg_find_by_label.exit.thread:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %timer108 = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %timer108 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %timer108, align 8
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i
  %attr.i = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 5
  %8 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %attr.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %label.i, ptr noundef %9) #9
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__idletimer_tg_find_by_label.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__idletimer_tg_find_by_label.exit:                ; preds = %for.body.i
  %timer = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry1.0.i, ptr %timer, align 8
  %tobool26.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool26.not, label %__idletimer_tg_find_by_label.exit.if.else_crit_edge, label %if.then27

__idletimer_tg_find_by_label.exit.if.else_crit_edge: ; preds = %__idletimer_tg_find_by_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then27:                                        ; preds = %__idletimer_tg_find_by_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  %refcnt = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 6
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %refcnt, align 4
  %13 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %timer, align 8
  %timer30 = getelementptr inbounds %struct.idletimer_tg, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 8
  %mul = mul i32 %16, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %17, %call2.i
  %call32 = tail call i32 @mod_timer(ptr noundef %timer30, i32 noundef %add) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then45)) #6
          to label %if.end73 [label %if.then45], !srcloc !185

if.then45:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %timer, align 8
  %refcnt49 = getelementptr inbounds %struct.idletimer_tg, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %refcnt49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refcnt49, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.11, ptr noundef %label.i, i32 noundef %21) #6
  br label %if.end73

if.else:                                          ; preds = %__idletimer_tg_find_by_label.exit.if.else_crit_edge, %__idletimer_tg_find_by_label.exit.thread
  %call53 = tail call fastcc i32 @idletimer_tg_create(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %do.body56, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

do.body56:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry, %if.then68)) #6
          to label %do.end71 [label %if.then68], !srcloc !185

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.13) #6
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %do.body56
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  br label %cleanup

if.end73:                                         ; preds = %if.else.if.end73_crit_edge, %if.then45, %if.then27
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end71, %if.then17, %do.body5
  %retval.0 = phi i32 [ 0, %if.end73 ], [ %call53, %do.end71 ], [ -22, %if.then17 ], [ -22, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idletimer_tg_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_destroy.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_destroy, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %label = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_destroy.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.40, ptr noundef %label) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #6
  %timer = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %refcnt = getelementptr inbounds %struct.idletimer_tg, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.body4, label %do.body35

do.body4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_destroy.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_destroy, %if.then16)) #6
          to label %do.end21 [label %if.then16], !srcloc !185

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %label17 = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_destroy.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.42, ptr noundef %label17) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end21.list_del.exit_crit_edge

do.end21.list_del.exit_crit_edge:                 ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end21.list_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timer, align 8
  %timer25 = getelementptr inbounds %struct.idletimer_tg, ptr %17, i32 0, i32 2
  %call26 = tail call i32 @del_timer_sync(ptr noundef %timer25) #6
  %18 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %timer, align 8
  %work = getelementptr inbounds %struct.idletimer_tg, ptr %19, i32 0, i32 3
  %call28 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  %20 = load ptr, ptr @idletimer_tg_kobj, align 4
  %21 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %timer, align 8
  %attr = getelementptr inbounds %struct.idletimer_tg, ptr %22, i32 0, i32 5
  tail call void @sysfs_remove_file_ns(ptr noundef %20, ptr noundef %attr, ptr noundef null) #6
  %23 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %timer, align 8
  %attr32 = getelementptr inbounds %struct.idletimer_tg, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %attr32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %attr32, align 8
  tail call void @kfree(ptr noundef %26) #6
  %27 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %timer, align 8
  tail call void @kfree(ptr noundef %28) #6
  br label %if.end55

do.body35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_destroy.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_destroy, %if.then47)) #6
          to label %if.end55 [label %if.then47], !srcloc !185

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %label48 = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %timer, align 8
  %refcnt51 = getelementptr inbounds %struct.idletimer_tg, ptr %30, i32 0, i32 6
  %31 = ptrtoint ptr %refcnt51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %refcnt51, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_destroy.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.44, ptr noundef %label48, i32 noundef %32) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %do.body35, %list_del.exit
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_target_v1(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_target_v1.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_target_v1, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %label = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_target_v1.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.4, ptr noundef %label, i32 noundef %4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timer = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 8
  %timer_type = getelementptr inbounds %struct.idletimer_tg, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %timer_type, align 8
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %conv6 = zext i32 %11 to i64
  %mul.i = mul nuw nsw i64 %conv6, 1000000000
  %alarm = getelementptr inbounds %struct.idletimer_tg, ptr %6, i32 0, i32 1
  tail call void @alarm_start_relative(ptr noundef %alarm, i64 noundef %mul.i) #6
  br label %if.end14

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %timer10 = getelementptr inbounds %struct.idletimer_tg, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %2, align 8
  %mul = mul i32 %13, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, %call2.i
  %call13 = tail call i32 @mod_timer(ptr noundef %timer10, i32 noundef %add) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then4
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_checkentry_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %ktimespec = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %label = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.7, ptr noundef %label) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %send_nl_msg = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %send_nl_msg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %send_nl_msg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i194 = icmp eq i32 %5, 0
  br i1 %cmp.i194, label %do.body.i, label %if.end4.i

do.body.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then3.i)) #6
          to label %do.body8 [label %if.then3.i], !srcloc !185

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_helper.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.16) #6
  br label %do.body8

if.end4.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147482, i32 %5)
  %cmp6.i = icmp ugt i32 %5, 2147482
  br i1 %cmp6.i, label %do.body8.i, label %if.end23.i

do.body8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then20.i)) #6
          to label %do.body8 [label %if.then20.i], !srcloc !185

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_helper.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.18) #6
  br label %do.body8

if.end23.i:                                       ; preds = %if.end4.i
  %label.i = getelementptr inbounds %struct.idletimer_tg_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %label.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp24.i = icmp eq i8 %7, 0
  br i1 %cmp24.i, label %if.end23.i.do.body31.i_crit_edge, label %lor.lhs.false.i

if.end23.i.do.body31.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %call27.i = tail call i32 @strnlen(ptr noundef %label.i, i32 noundef 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call27.i)
  %cmp28.i = icmp eq i32 %call27.i, 28
  br i1 %cmp28.i, label %lor.lhs.false.i.do.body31.i_crit_edge, label %if.end24

lor.lhs.false.i.do.body31.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31.i

do.body31.i:                                      ; preds = %lor.lhs.false.i.do.body31.i_crit_edge, %if.end23.i.do.body31.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then43.i)) #6
          to label %do.body8 [label %if.then43.i], !srcloc !185

if.then43.i:                                      ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_helper.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.20) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then43.i, %do.body31.i, %if.then20.i, %do.body8.i, %if.then3.i, %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then20)) #6
          to label %cleanup [label %if.then20], !srcloc !185

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false.i
  %timer_type = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %timer_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp25 = icmp ugt i8 %9, 1
  br i1 %cmp25, label %do.body28, label %if.end44

do.body28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then40)) #6
          to label %cleanup [label %if.then40], !srcloc !185

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.48) #6
  br label %cleanup

if.end44:                                         ; preds = %if.end24
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end44
  %entry1.0.in.i = phi ptr [ @idletimer_tg_list, %if.end44 ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @idletimer_tg_list
  br i1 %cmp.not.i, label %__idletimer_tg_find_by_label.exit.thread, label %for.body.i

__idletimer_tg_find_by_label.exit.thread:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %timer206 = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %timer206 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %timer206, align 8
  br label %if.else131

for.body.i:                                       ; preds = %for.cond.i
  %attr.i = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 5
  %12 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %attr.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %label.i, ptr noundef %13) #9
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__idletimer_tg_find_by_label.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__idletimer_tg_find_by_label.exit:                ; preds = %for.body.i
  %timer = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry1.0.i, ptr %timer, align 8
  %tobool49.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool49.not, label %__idletimer_tg_find_by_label.exit.if.else131_crit_edge, label %if.then50

__idletimer_tg_find_by_label.exit.if.else131_crit_edge: ; preds = %__idletimer_tg_find_by_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else131

if.then50:                                        ; preds = %__idletimer_tg_find_by_label.exit
  %timer_type52 = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 7
  %15 = ptrtoint ptr %timer_type52 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %timer_type52, align 8
  %17 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %timer_type, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp56.not = icmp eq i8 %16, %18
  br i1 %cmp56.not, label %if.end75, label %do.body59

do.body59:                                        ; preds = %if.then50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then71)) #6
          to label %do.end74 [label %if.then71], !srcloc !185

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.50) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body59
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  br label %cleanup

if.end75:                                         ; preds = %if.then50
  %refcnt = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 6
  %19 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refcnt, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %refcnt, align 4
  %21 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %timer_type, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool79.not = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %timer, align 8
  br i1 %tobool79.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.end75
  %alarm = getelementptr inbounds %struct.idletimer_tg, ptr %25, i32 0, i32 1
  %call82 = tail call i64 @alarm_expires_remaining(ptr noundef %alarm) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ktimespec) #6
  %26 = call ptr @memset(ptr %ktimespec, i32 255, i32 16)
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %ktimespec, i64 noundef %call82) #6
  %27 = ptrtoint ptr %ktimespec to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ktimespec, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %28)
  %cmp83 = icmp sgt i64 %28, 0
  br i1 %cmp83, label %do.body86, label %if.then80.if.end105_crit_edge

if.then80.if.end105_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

do.body86:                                        ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then98)) #6
          to label %do.end102 [label %if.then98], !srcloc !185

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ktimespec to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %ktimespec, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.52, i64 noundef %30) #6
  br label %do.end102

do.end102:                                        ; preds = %if.then98, %do.body86
  %31 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %timer, align 8
  %alarm104 = getelementptr inbounds %struct.idletimer_tg, ptr %32, i32 0, i32 1
  call void @alarm_start_relative(ptr noundef %alarm104, i64 noundef %call82) #6
  br label %if.end105

if.end105:                                        ; preds = %do.end102, %if.then80.if.end105_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ktimespec) #6
  br label %do.body111

if.else:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  %timer107 = getelementptr inbounds %struct.idletimer_tg, ptr %25, i32 0, i32 2
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 8
  %mul = mul i32 %34, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %35, %call2.i
  %call109 = tail call i32 @mod_timer(ptr noundef %timer107, i32 noundef %add) #6
  br label %do.body111

do.body111:                                       ; preds = %if.else, %if.end105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then123)) #6
          to label %if.end153 [label %if.then123], !srcloc !185

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %timer, align 8
  %refcnt127 = getelementptr inbounds %struct.idletimer_tg, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %refcnt127 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %refcnt127, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.11, ptr noundef %label.i, i32 noundef %39) #6
  br label %if.end153

if.else131:                                       ; preds = %__idletimer_tg_find_by_label.exit.if.else131_crit_edge, %__idletimer_tg_find_by_label.exit.thread
  %call132 = tail call fastcc i32 @idletimer_tg_create_v1(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %cmp133 = icmp slt i32 %call132, 0
  br i1 %cmp133, label %do.body136, label %if.else131.if.end153_crit_edge

if.else131.if.end153_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end153

do.body136:                                       ; preds = %if.else131
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_checkentry_v1, %if.then148)) #6
          to label %do.end151 [label %if.then148], !srcloc !185

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.13) #6
  br label %do.end151

do.end151:                                        ; preds = %if.then148, %do.body136
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  br label %cleanup

if.end153:                                        ; preds = %if.else131.if.end153_crit_edge, %if.then123, %do.body111
  call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end153, %do.end151, %do.end74, %if.then40, %do.body28, %if.then20, %do.body8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end74 ], [ 0, %if.end153 ], [ %call132, %do.end151 ], [ -95, %do.end.cleanup_crit_edge ], [ -22, %if.then20 ], [ -22, %if.then40 ], [ -22, %do.body8 ], [ -22, %do.body28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idletimer_tg_destroy_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_destroy_v1, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %label = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.40, ptr noundef %label) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #6
  %timer = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %refcnt = getelementptr inbounds %struct.idletimer_tg, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.body4, label %do.body42

do.body4:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_destroy_v1, %if.then16)) #6
          to label %do.end21 [label %if.then16], !srcloc !185

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #8
  %label17 = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.42, ptr noundef %label17) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end21.list_del.exit_crit_edge

do.end21.list_del.exit_crit_edge:                 ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end21.list_del.exit_crit_edge
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %16 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timer, align 8
  %timer_type = getelementptr inbounds %struct.idletimer_tg, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %timer_type, align 8
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not = icmp eq i8 %20, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %alarm = getelementptr inbounds %struct.idletimer_tg, ptr %17, i32 0, i32 1
  %call28 = tail call i32 @alarm_cancel(ptr noundef %alarm) #6
  br label %if.end32

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %timer30 = getelementptr inbounds %struct.idletimer_tg, ptr %17, i32 0, i32 2
  %call31 = tail call i32 @del_timer_sync(ptr noundef %timer30) #6
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then26
  %21 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %timer, align 8
  %work = getelementptr inbounds %struct.idletimer_tg, ptr %22, i32 0, i32 3
  %call34 = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #6
  %23 = load ptr, ptr @idletimer_tg_kobj, align 4
  %24 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %timer, align 8
  %attr = getelementptr inbounds %struct.idletimer_tg, ptr %25, i32 0, i32 5
  tail call void @sysfs_remove_file_ns(ptr noundef %23, ptr noundef %attr, ptr noundef null) #6
  %26 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %timer, align 8
  %attr38 = getelementptr inbounds %struct.idletimer_tg, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %attr38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attr38, align 8
  tail call void @kfree(ptr noundef %29) #6
  %30 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %timer, align 8
  tail call void @kfree(ptr noundef %31) #6
  br label %if.end62

do.body42:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_destroy_v1, %if.then54)) #6
          to label %if.end62 [label %if.then54], !srcloc !185

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %label55 = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %timer, align 8
  %refcnt58 = getelementptr inbounds %struct.idletimer_tg, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %refcnt58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %refcnt58, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.44, ptr noundef %label55, i32 noundef %35) #6
  br label %if.end62

if.end62:                                         ; preds = %if.then54, %do.body42, %if.end32
  tail call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idletimer_tg_create(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 232) #10
  %timer = getelementptr inbounds %struct.idletimer_tg_info, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %timer, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %label = getelementptr inbounds %struct.idletimer_tg_info, ptr %info, i32 0, i32 1
  %call.i = tail call i32 @xt_check_proc_name(ptr noundef %label, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i95 = icmp slt i32 %call.i, 0
  br i1 %cmp.i95, label %if.end.out_free_timer_crit_edge, label %if.end.i96

if.end.out_free_timer_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

if.end.i96:                                       ; preds = %if.end
  %call1.i = tail call i32 @strcmp(ptr noundef %label, ptr noundef nonnull dereferenceable(6) @.str.30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i96.out_free_timer_crit_edge, label %lor.lhs.false.i

if.end.i96.out_free_timer_crit_edge:              ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

lor.lhs.false.i:                                  ; preds = %if.end.i96
  %call2.i97 = tail call i32 @strcmp(ptr noundef %label, ptr noundef nonnull dereferenceable(10) @.str.31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i97)
  %tobool3.not.i = icmp eq i32 %call2.i97, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.out_free_timer_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.out_free_timer_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @strcmp(ptr noundef %label, ptr noundef nonnull dereferenceable(7) @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.out_free_timer_crit_edge, label %do.body

lor.lhs.false4.i.out_free_timer_crit_edge:        ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

do.body:                                          ; preds = %lor.lhs.false4.i
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %key = getelementptr inbounds %struct.idletimer_tg, ptr %3, i32 0, i32 5, i32 0, i32 3
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @idletimer_tg_create.__key, ptr %key, align 8
  %call9 = tail call noalias ptr @kstrdup(ptr noundef %label, i32 noundef 3264) #6
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 8
  %attr11 = getelementptr inbounds %struct.idletimer_tg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %attr11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %attr11, align 8
  %8 = load ptr, ptr %timer, align 8
  %attr14 = getelementptr inbounds %struct.idletimer_tg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %attr14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr14, align 8
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %do.body.out_free_timer_crit_edge, label %if.end19

do.body.out_free_timer_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

if.end19:                                         ; preds = %do.body
  %mode = getelementptr inbounds %struct.idletimer_tg, ptr %8, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 292, ptr %mode, align 4
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer, align 8
  %show = getelementptr inbounds %struct.idletimer_tg, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @idletimer_tg_show, ptr %show, align 4
  %15 = load ptr, ptr @idletimer_tg_kobj, align 4
  %16 = load ptr, ptr %timer, align 8
  %attr26 = getelementptr inbounds %struct.idletimer_tg, ptr %16, i32 0, i32 5
  %call.i99 = tail call i32 @sysfs_create_file_ns(ptr noundef %15, ptr noundef %attr26, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp29 = icmp slt i32 %call.i99, 0
  br i1 %cmp29, label %do.body31, label %if.end40

do.body31:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_create.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_create, %if.then36)) #6
          to label %out_free_attr [label %if.then36], !srcloc !185

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_create.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.25) #6
  br label %out_free_attr

if.end40:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %timer, align 8
  %19 = load ptr, ptr @idletimer_tg_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef nonnull @idletimer_tg_list, ptr noundef %19) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_add.exit_crit_edge

if.end40.list_add.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %18, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @idletimer_tg_list, ptr %prev3.i.i, align 4
  store volatile ptr %18, ptr @idletimer_tg_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end40.list_add.exit_crit_edge
  %23 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %timer, align 8
  %timer45 = getelementptr inbounds %struct.idletimer_tg, ptr %24, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer45, ptr noundef nonnull @idletimer_tg_expired, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @idletimer_tg_create.__key.26) #6
  %25 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %timer, align 8
  %refcnt = getelementptr inbounds %struct.idletimer_tg, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %refcnt, align 4
  %28 = load ptr, ptr %timer, align 8
  %work = getelementptr inbounds %struct.idletimer_tg, ptr %28, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %29 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %timer, align 8
  %work52 = getelementptr inbounds %struct.idletimer_tg, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %work52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -64, ptr %work52, align 8
  %32 = load ptr, ptr %timer, align 8
  %lockdep_map = getelementptr inbounds %struct.idletimer_tg, ptr %32, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @idletimer_tg_create.__key.28, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %33 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %timer, align 8
  %entry57 = getelementptr inbounds %struct.idletimer_tg, ptr %34, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %entry57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry57, ptr %entry57, align 4
  %prev.i = getelementptr inbounds %struct.idletimer_tg, ptr %34, i32 0, i32 3, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry57, ptr %prev.i, align 4
  %37 = load ptr, ptr %timer, align 8
  %func = getelementptr inbounds %struct.idletimer_tg, ptr %37, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @idletimer_tg_work, ptr %func, align 4
  %39 = load ptr, ptr %timer, align 8
  %timer63 = getelementptr inbounds %struct.idletimer_tg, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %info, align 8
  %mul = mul i32 %41, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %42, %call2.i
  %call65 = tail call i32 @mod_timer(ptr noundef %timer63, i32 noundef %add) #6
  br label %cleanup

out_free_attr:                                    ; preds = %if.then36, %do.body31
  %43 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %timer, align 8
  %attr67 = getelementptr inbounds %struct.idletimer_tg, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %attr67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %attr67, align 8
  tail call void @kfree(ptr noundef %46) #6
  br label %out_free_timer

out_free_timer:                                   ; preds = %out_free_attr, %do.body.out_free_timer_crit_edge, %lor.lhs.false4.i.out_free_timer_crit_edge, %lor.lhs.false.i.out_free_timer_crit_edge, %if.end.i96.out_free_timer_crit_edge, %if.end.out_free_timer_crit_edge
  %ret.0 = phi i32 [ %call.i99, %out_free_attr ], [ -12, %do.body.out_free_timer_crit_edge ], [ -22, %if.end.i96.out_free_timer_crit_edge ], [ -22, %lor.lhs.false.i.out_free_timer_crit_edge ], [ %call.i, %if.end.out_free_timer_crit_edge ], [ -22, %lor.lhs.false4.i.out_free_timer_crit_edge ]
  %47 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %timer, align 8
  tail call void @kfree(ptr noundef %48) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_timer, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add.exit ], [ %ret.0, %out_free_timer ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @list_mutex, i32 noundef 0) #6
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %entry1.0.in.i = phi ptr [ @idletimer_tg_list, %entry ], [ %entry1.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %entry1.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %entry1.0.i = load ptr, ptr %entry1.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %entry1.0.i, @idletimer_tg_list
  br i1 %cmp.not.i, label %for.cond.i.if.end9_crit_edge, label %for.body.i

for.cond.i.if.end9_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

for.body.i:                                       ; preds = %for.cond.i
  %attr.i = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 5
  %3 = ptrtoint ptr %attr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr.i, align 8
  %call.i = tail call i32 @strcmp(ptr noundef %1, ptr noundef %4) #9
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %__idletimer_tg_find_by_label.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

__idletimer_tg_find_by_label.exit:                ; preds = %for.body.i
  %tobool.not = icmp eq ptr %entry1.0.i, null
  br i1 %tobool.not, label %__idletimer_tg_find_by_label.exit.if.end9_crit_edge, label %if.then

__idletimer_tg_find_by_label.exit.if.end9_crit_edge: ; preds = %__idletimer_tg_find_by_label.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %__idletimer_tg_find_by_label.exit
  %timer_type = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 7
  %5 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %timer_type, align 8
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %alarm = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 1
  %call4 = tail call i64 @alarm_expires_remaining(ptr noundef %alarm) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #6
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call4) #6
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %8)
  %ktimespec.sroa.0.0.copyload = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #6
  %conv5 = trunc i64 %ktimespec.sroa.0.0.copyload to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ktimespec.sroa.0.0.copyload)
  %phi.cmp = icmp sgt i64 %ktimespec.sroa.0.0.copyload, 0
  br label %if.end9

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %expires7 = getelementptr inbounds %struct.idletimer_tg, ptr %entry1.0.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %expires7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %expires7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %10, %11
  %call8 = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #6
  %div = udiv i32 %call8, 1000
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3, %__idletimer_tg_find_by_label.exit.if.end9_crit_edge, %for.cond.i.if.end9_crit_edge
  %expires.0 = phi i32 [ 0, %if.then3 ], [ %10, %if.else ], [ 0, %__idletimer_tg_find_by_label.exit.if.end9_crit_edge ], [ 0, %for.cond.i.if.end9_crit_edge ]
  %ktimespec.sroa.0.0 = phi i1 [ %phi.cmp, %if.then3 ], [ false, %if.else ], [ false, %__idletimer_tg_find_by_label.exit.if.end9_crit_edge ], [ false, %for.cond.i.if.end9_crit_edge ]
  %time_diff.0 = phi i32 [ %conv5, %if.then3 ], [ %div, %if.else ], [ 0, %__idletimer_tg_find_by_label.exit.if.end9_crit_edge ], [ 0, %for.cond.i.if.end9_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @list_mutex) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub10 = sub i32 %12, %expires.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub10)
  %cmp = icmp slt i32 %sub10, 0
  %or.cond = select i1 %cmp, i1 true, i1 %ktimespec.sroa.0.0
  br i1 %or.cond, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.33, i32 noundef %time_diff.0) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then15
  %retval.0 = phi i32 [ %call16, %if.then15 ], [ %call18, %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idletimer_tg_expired(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_expired.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_expired, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %attr = getelementptr i8, ptr %t, i32 96
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_expired.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.37, ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %work = getelementptr i8, ptr %t, i32 48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idletimer_tg_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @idletimer_tg_kobj, align 4
  %attr = getelementptr i8, ptr %work, i32 48
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 8
  tail call void @sysfs_notify(ptr noundef %0, ptr noundef null, ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_check_proc_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @alarm_expires_remaining(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_start_relative(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @idletimer_tg_create_v1(ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 232) #10
  %timer = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %timer to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i, ptr %timer, align 8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %label = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %info, i32 0, i32 1
  %call.i = tail call i32 @xt_check_proc_name(ptr noundef %label, i32 noundef 28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i143 = icmp slt i32 %call.i, 0
  br i1 %cmp.i143, label %if.end.out_free_timer_crit_edge, label %if.end.i144

if.end.out_free_timer_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

if.end.i144:                                      ; preds = %if.end
  %call1.i = tail call i32 @strcmp(ptr noundef %label, ptr noundef nonnull dereferenceable(6) @.str.30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i144.out_free_timer_crit_edge, label %lor.lhs.false.i

if.end.i144.out_free_timer_crit_edge:             ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

lor.lhs.false.i:                                  ; preds = %if.end.i144
  %call2.i145 = tail call i32 @strcmp(ptr noundef %label, ptr noundef nonnull dereferenceable(10) @.str.31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i145)
  %tobool3.not.i = icmp eq i32 %call2.i145, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.out_free_timer_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.out_free_timer_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @strcmp(ptr noundef %label, ptr noundef nonnull dereferenceable(7) @.str.32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %lor.lhs.false4.i.out_free_timer_crit_edge, label %do.body

lor.lhs.false4.i.out_free_timer_crit_edge:        ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

do.body:                                          ; preds = %lor.lhs.false4.i
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %key = getelementptr inbounds %struct.idletimer_tg, ptr %3, i32 0, i32 5, i32 0, i32 3
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @idletimer_tg_create_v1.__key, ptr %key, align 8
  %call9 = tail call noalias ptr @kstrdup(ptr noundef %label, i32 noundef 3264) #6
  %5 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %timer, align 8
  %attr11 = getelementptr inbounds %struct.idletimer_tg, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %attr11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %attr11, align 8
  %8 = load ptr, ptr %timer, align 8
  %attr14 = getelementptr inbounds %struct.idletimer_tg, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %attr14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %attr14, align 8
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %do.body.out_free_timer_crit_edge, label %if.end19

do.body.out_free_timer_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_timer

if.end19:                                         ; preds = %do.body
  %mode = getelementptr inbounds %struct.idletimer_tg, ptr %8, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 292, ptr %mode, align 4
  %12 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timer, align 8
  %show = getelementptr inbounds %struct.idletimer_tg, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @idletimer_tg_show, ptr %show, align 4
  %15 = load ptr, ptr @idletimer_tg_kobj, align 4
  %16 = load ptr, ptr %timer, align 8
  %attr26 = getelementptr inbounds %struct.idletimer_tg, ptr %16, i32 0, i32 5
  %call.i147 = tail call i32 @sysfs_create_file_ns(ptr noundef %15, ptr noundef %attr26, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp29 = icmp slt i32 %call.i147, 0
  br i1 %cmp29, label %do.body31, label %if.end40

do.body31:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_create_v1.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_create_v1, %if.then36)) #6
          to label %out_free_attr [label %if.then36], !srcloc !185

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_create_v1.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.25) #6
  br label %out_free_attr

if.end40:                                         ; preds = %if.end19
  %17 = load ptr, ptr @idletimer_tg_kobj, align 4
  %call41 = tail call i32 @kobject_uevent(ptr noundef %17, i32 noundef 0) #6
  %18 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %timer, align 8
  %20 = load ptr, ptr @idletimer_tg_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef nonnull @idletimer_tg_list, ptr noundef %20) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.list_add.exit_crit_edge

if.end40.list_add.exit_crit_edge:                 ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev1.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %19, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @idletimer_tg_list, ptr %prev3.i.i, align 4
  store volatile ptr %19, ptr @idletimer_tg_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end40.list_add.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_create_v1.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_create_v1, %if.then56)) #6
          to label %do.end59 [label %if.then56], !srcloc !185

if.then56:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  %timer_type = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %info, i32 0, i32 3
  %24 = ptrtoint ptr %timer_type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %timer_type, align 1
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_create_v1.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.55, i32 noundef %conv) #6
  br label %do.end59

do.end59:                                         ; preds = %if.then56, %list_add.exit
  %timer_type60 = getelementptr inbounds %struct.idletimer_tg_info_v1, ptr %info, i32 0, i32 3
  %26 = ptrtoint ptr %timer_type60 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %timer_type60, align 1
  %28 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %timer, align 8
  %timer_type62 = getelementptr inbounds %struct.idletimer_tg, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %timer_type62 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %timer_type62, align 8
  %31 = load ptr, ptr %timer, align 8
  %refcnt = getelementptr inbounds %struct.idletimer_tg, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %refcnt, align 4
  %33 = load ptr, ptr %timer, align 8
  %work = getelementptr inbounds %struct.idletimer_tg, ptr %33, i32 0, i32 3
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %34 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timer, align 8
  %work67 = getelementptr inbounds %struct.idletimer_tg, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %work67 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -64, ptr %work67, align 8
  %37 = load ptr, ptr %timer, align 8
  %lockdep_map = getelementptr inbounds %struct.idletimer_tg, ptr %37, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @idletimer_tg_create_v1.__key.56, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %38 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %timer, align 8
  %entry72 = getelementptr inbounds %struct.idletimer_tg, ptr %39, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i = getelementptr inbounds %struct.idletimer_tg, ptr %39, i32 0, i32 3, i32 1, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %entry72, ptr %prev.i, align 4
  %42 = load ptr, ptr %timer, align 8
  %func = getelementptr inbounds %struct.idletimer_tg, ptr %42, i32 0, i32 3, i32 2
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @idletimer_tg_work, ptr %func, align 4
  %44 = load ptr, ptr %timer, align 8
  %timer_type78 = getelementptr inbounds %struct.idletimer_tg, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %timer_type78 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %timer_type78, align 8
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool80.not = icmp eq i8 %47, 0
  br i1 %tobool80.not, label %do.body91, label %if.then81

if.then81:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  %alarm = getelementptr inbounds %struct.idletimer_tg, ptr %44, i32 0, i32 1
  tail call void @alarm_init(ptr noundef %alarm, i32 noundef 1, ptr noundef nonnull @idletimer_tg_alarmproc) #6
  %48 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %timer, align 8
  %data86 = getelementptr inbounds %struct.idletimer_tg, ptr %49, i32 0, i32 1, i32 5
  %50 = ptrtoint ptr %data86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %data86, align 4
  %51 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %info, align 8
  %conv87 = zext i32 %52 to i64
  %mul.i = mul nuw nsw i64 %conv87, 1000000000
  %53 = load ptr, ptr %timer, align 8
  %alarm90 = getelementptr inbounds %struct.idletimer_tg, ptr %53, i32 0, i32 1
  tail call void @alarm_start_relative(ptr noundef %alarm90, i64 noundef %mul.i) #6
  br label %cleanup

do.body91:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #8
  %timer93 = getelementptr inbounds %struct.idletimer_tg, ptr %44, i32 0, i32 2
  tail call void @init_timer_key(ptr noundef %timer93, ptr noundef nonnull @idletimer_tg_expired, i32 noundef 0, ptr noundef nonnull @.str.27, ptr noundef nonnull @idletimer_tg_create_v1.__key.57) #6
  %54 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %timer, align 8
  %timer97 = getelementptr inbounds %struct.idletimer_tg, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %info, align 8
  %mul = mul i32 %57, 1000
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mul) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %58, %call2.i
  %call100 = tail call i32 @mod_timer(ptr noundef %timer97, i32 noundef %add) #6
  br label %cleanup

out_free_attr:                                    ; preds = %if.then36, %do.body31
  %59 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %timer, align 8
  %attr103 = getelementptr inbounds %struct.idletimer_tg, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %attr103 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %attr103, align 8
  tail call void @kfree(ptr noundef %62) #6
  br label %out_free_timer

out_free_timer:                                   ; preds = %out_free_attr, %do.body.out_free_timer_crit_edge, %lor.lhs.false4.i.out_free_timer_crit_edge, %lor.lhs.false.i.out_free_timer_crit_edge, %if.end.i144.out_free_timer_crit_edge, %if.end.out_free_timer_crit_edge
  %ret.0 = phi i32 [ %call.i147, %out_free_attr ], [ -12, %do.body.out_free_timer_crit_edge ], [ -22, %if.end.i144.out_free_timer_crit_edge ], [ -22, %lor.lhs.false.i.out_free_timer_crit_edge ], [ %call.i, %if.end.out_free_timer_crit_edge ], [ -22, %lor.lhs.false4.i.out_free_timer_crit_edge ]
  %63 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %timer, align 8
  tail call void @kfree(ptr noundef %64) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_timer, %do.body91, %if.then81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body91 ], [ 0, %if.then81 ], [ %ret.0, %out_free_timer ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @alarm_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idletimer_tg_alarmproc(ptr nocapture noundef readonly %alarm, i64 noundef %now) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.alarm, ptr %alarm, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idletimer_tg_alarmproc.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idletimer_tg_alarmproc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %attr = getelementptr inbounds %struct.idletimer_tg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idletimer_tg_alarmproc.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.60, ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %work = getelementptr inbounds %struct.idletimer_tg, ptr %1, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alarm_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !69, !70, !71, !73, !74, !76, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !135, !136, !138, !139, !140, !142, !144, !146, !147, !148, !149, !151, !152, !154, !156, !158, !159, !161, !162, !163, !164, !166, !168, !169, !170, !172, !173, !174}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @__initcall__kmod_xt_IDLETIMER__384_534_idletimer_tg_init6, !1, !"__initcall__kmod_xt_IDLETIMER__384_534_idletimer_tg_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 534, i32 1}
!2 = !{ptr @__exitcall_idletimer_tg_exit, !3, !"__exitcall_idletimer_tg_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 535, i32 1}
!4 = !{ptr @__UNIQUE_ID_author385, !5, !"__UNIQUE_ID_author385", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 537, i32 1}
!6 = !{ptr @__UNIQUE_ID_author386, !7, !"__UNIQUE_ID_author386", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 538, i32 1}
!8 = !{ptr @__UNIQUE_ID_description387, !9, !"__UNIQUE_ID_description387", i1 false, i1 false}
!9 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 539, i32 1}
!10 = !{ptr @__UNIQUE_ID_file388, !11, !"__UNIQUE_ID_file388", i1 false, i1 false}
!11 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 540, i32 1}
!12 = !{ptr @__UNIQUE_ID_license389, !11, !"__UNIQUE_ID_license389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias390, !14, !"__UNIQUE_ID_alias390", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 541, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias391, !16, !"__UNIQUE_ID_alias391", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 542, i32 1}
!17 = !{ptr @idletimer_tg_class, !18, !"idletimer_tg_class", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 485, i32 22}
!19 = !{ptr @idletimer_tg, !20, !"idletimer_tg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 459, i32 25}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 255, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @idletimer_tg_target.__UNIQUE_ID_ddebug359, !22, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!27 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 311, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug364, !29, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 316, i32 3}
!35 = !{ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug365, !34, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!36 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 327, i32 3}
!39 = !{ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug366, !38, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!40 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 332, i32 4}
!43 = !{ptr @idletimer_tg_checkentry.__UNIQUE_ID_ddebug367, !42, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!44 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 289, i32 3}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug361, !46, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!49 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 293, i32 3}
!52 = !{ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug362, !51, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 299, i32 3}
!56 = !{ptr @idletimer_tg_helper.__UNIQUE_ID_ddebug363, !55, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!57 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 46, i32 8}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @list_mutex, !59, !"list_mutex", i1 false, i1 false}
!62 = !{ptr @idletimer_tg_list, !63, !"idletimer_tg_list", i1 false, i1 false}
!63 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 45, i32 8}
!64 = !{ptr @idletimer_tg_create.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 150, i32 2}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 161, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @idletimer_tg_create.__UNIQUE_ID_ddebug356, !67, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!70 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @idletimer_tg_create.__key.26, !72, !"__key", i1 false, i1 false}
!72 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 167, i32 2}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @idletimer_tg_create.__key.28, !75, !"__key", i1 false, i1 false}
!75 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 170, i32 2}
!76 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 128, i32 20}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 129, i32 20}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 130, i32 20}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 88, i32 26}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 90, i32 25}
!87 = !{ptr @idletimer_tg_kobj, !88, !"idletimer_tg_kobj", i1 false, i1 false}
!88 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 48, i32 24}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 105, i32 2}
!91 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @idletimer_tg_expired.__UNIQUE_ID_ddebug354, !90, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!93 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 408, i32 2}
!96 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @idletimer_tg_destroy.__UNIQUE_ID_ddebug375, !95, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!98 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 413, i32 3}
!101 = !{ptr @idletimer_tg_destroy.__UNIQUE_ID_ddebug376, !100, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!102 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 422, i32 3}
!105 = !{ptr @idletimer_tg_destroy.__UNIQUE_ID_ddebug377, !104, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!106 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 272, i32 2}
!109 = !{ptr @idletimer_tg_target_v1.__UNIQUE_ID_ddebug360, !108, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 347, i32 2}
!112 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug368, !111, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!113 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug369, !114, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!114 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 355, i32 3}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 360, i32 3}
!117 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug370, !116, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!118 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 369, i32 4}
!121 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug371, !120, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!122 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 381, i32 5}
!125 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug372, !124, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!126 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug373, !128, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!128 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 389, i32 3}
!129 = !{ptr @idletimer_tg_checkentry_v1.__UNIQUE_ID_ddebug374, !130, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!130 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 394, i32 4}
!131 = !{ptr @idletimer_tg_create_v1.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 199, i32 2}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 210, i32 3}
!135 = !{ptr @idletimer_tg_create_v1.__UNIQUE_ID_ddebug357, !134, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 218, i32 2}
!138 = !{ptr @idletimer_tg_create_v1.__UNIQUE_ID_ddebug358, !137, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!139 = !{ptr @.str.55, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @idletimer_tg_create_v1.__key.56, !141, !"__key", i1 false, i1 false}
!141 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 222, i32 2}
!142 = !{ptr @idletimer_tg_create_v1.__key.57, !143, !"__key", i1 false, i1 false}
!143 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 232, i32 3}
!144 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 115, i32 2}
!146 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @idletimer_tg_alarmproc.__UNIQUE_ID_ddebug355, !145, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!148 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.61, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 433, i32 2}
!151 = !{ptr @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug378, !150, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!152 = !{ptr @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug379, !153, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!153 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 438, i32 3}
!154 = !{ptr @idletimer_tg_destroy_v1.__UNIQUE_ID_ddebug380, !155, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!155 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 451, i32 3}
!156 = !{ptr @idletimer_tg_init.__key, !157, !"__key", i1 false, i1 false}
!157 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 493, i32 23}
!158 = !{ptr @.str.62, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 496, i32 3}
!161 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @idletimer_tg_init.__UNIQUE_ID_ddebug381, !160, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!163 = !{ptr @.str.65, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 501, i32 29}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 504, i32 3}
!168 = !{ptr @idletimer_tg_init.__UNIQUE_ID_ddebug382, !167, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!169 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 513, i32 3}
!172 = !{ptr @idletimer_tg_init.__UNIQUE_ID_ddebug383, !171, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!173 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @idletimer_tg_device, !175, !"idletimer_tg_device", i1 false, i1 false}
!175 = !{!"../net/netfilter/xt_IDLETIMER.c", i32 487, i32 23}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!185 = !{i64 2148964809, i64 2148964814, i64 2148964827, i64 2148964871, i64 2148964905, i64 2148964926}
