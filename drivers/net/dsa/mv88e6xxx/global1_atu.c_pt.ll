; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/global1_atu.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/global1_atu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }
%struct.mv88e6xxx_atu_entry = type { i8, i8, i16, [6 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@mv88e6xxx_g1_atu_set_age_time.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mv88e6xxx\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv88e6xxx_g1_atu_set_age_time\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/dsa/mv88e6xxx/global1_atu.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AgeTime set to 0x%02x (%d ms)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv88e6xxx-%s-g1-atu-prob\00", [39 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn = private unnamed_addr constant [36 x i8] c"mv88e6xxx_g1_atu_prob_irq_thread_fn\00", align 1
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn, ptr @.str.2, i32 384, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ATU age out violation for %pM\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr = internal global ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry, section ".printk_index", align 4
@mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.9 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn, ptr @.str.2, i32 390, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ATU member violation for %pM portvec %x spid %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.12 = internal global ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.10, section ".printk_index", align 4
@mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn, ptr @.str.2, i32 397, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ATU miss violation for %pM portvec %x spid %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.16 = internal global ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.14, section ".printk_index", align 4
@mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn, ptr @.str.2, i32 404, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ATU full violation for %pM portvec %x spid %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.20 = internal global ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.18, section ".printk_index", align 4
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn, ptr @.str.2, i32 415, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ATU problem: error %d while handling interrupt\0A\00", [48 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.23 = internal global ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.21, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 70, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 429, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 382, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 388, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 395, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 402, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [43 x i8] c"../drivers/net/dsa/mv88e6xxx/global1_atu.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 414, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.10, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.14, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.18, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.21, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.12, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.16, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.20, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.9, ptr @.str.11, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.13, ptr @.str.15, ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.17, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_set_learn2all(ptr noundef %chip, i1 noundef zeroext %learn2all) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !45
  %call = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = and i16 %2, -9
  %masksel = select i1 %learn2all, i16 8, i16 0
  %storemerge = or i16 %3, %masksel
  store i16 %storemerge, ptr %val, align 2
  %call7 = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 10, i16 noundef zeroext %storemerge) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_write(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_set_age_time(ptr noundef %chip, i32 noundef %msecs) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %age_time_coeff = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %age_time_coeff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %age_time_coeff, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !45
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %msecs)
  %cmp = icmp ugt i32 %3, %msecs
  %mul1 = mul i32 %3, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %mul1, i32 %msecs)
  %cmp2 = icmp ult i32 %mul1, %msecs
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %div43 = lshr i32 %3, 1
  %add = add i32 %div43, %msecs
  %div3 = udiv i32 %add, %3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, -4081
  %conv8 = and i32 %div3, 255
  %conv8.tr = trunc i32 %conv8 to i16
  %8 = shl nuw nsw i16 %conv8.tr, 4
  %conv10 = or i16 %8, %7
  store i16 %conv10, ptr %val, align 2
  %call11 = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 10, i16 noundef zeroext %conv10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.body, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mv88e6xxx_g1_atu_set_age_time.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mv88e6xxx_g1_atu_set_age_time, %if.then19)) #5
          to label %cleanup [label %if.then19], !srcloc !46

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %mul22 = mul i32 %conv8, %3
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mv88e6xxx_g1_atu_set_age_time.__UNIQUE_ID_ddebug497, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %conv8, i32 noundef %mul22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call11, %if.end5.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_g1_atu_get_hash(ptr noundef %chip, ptr nocapture noundef writeonly %hash) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !45
  %call = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = trunc i16 %2 to i8
  %conv1 = and i8 %3, 3
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %hash, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_g1_atu_set_hash(ptr noundef %chip, i8 noundef zeroext %hash) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hash)
  %tobool.not = icmp ult i8 %hash, 4
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = and i16 %2, -4
  %4 = zext i8 %hash to i16
  %conv9 = or i16 %3, %4
  store i16 %conv9, ptr %val, align 2
  %call10 = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 10, i16 noundef zeroext %conv9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_get_next(ptr noundef %chip, i16 noundef zeroext %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %chip, i16 noundef zeroext %fid, i16 noundef zeroext 16384)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %chip, i16 noundef zeroext %fid, i16 noundef zeroext %op) unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !45
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %num_databases.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %num_databases.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_databases.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp = icmp ugt i32 %4, 256
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = and i16 %fid, 4095
  %call.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 1, i16 noundef zeroext %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.if.end35_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %4)
  %cmp4 = icmp ugt i32 %4, 64
  br i1 %cmp4, label %if.then5, label %if.else17

if.then5:                                         ; preds = %if.else
  %call6 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.then5
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val, align 2
  %8 = and i16 %7, 4095
  %shl = shl i16 %fid, 8
  %and11 = and i16 %shl, -4096
  %or = or i16 %8, %and11
  store i16 %or, ptr %val, align 2
  %call13 = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 10, i16 noundef zeroext %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end9.if.end29_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.if.end29_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %cmp19 = icmp ugt i32 %4, 16
  br i1 %cmp19, label %if.then21, label %if.else17.if.end29_crit_edge

if.else17.if.end29_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then21:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #7
  %9 = shl i16 %fid, 4
  %10 = and i16 %9, 768
  %or2665 = or i16 %10, %op
  br label %if.end29

if.end29:                                         ; preds = %if.then21, %if.else17.if.end29_crit_edge, %if.end9.if.end29_crit_edge
  %op.addr.0 = phi i16 [ %op, %if.end9.if.end29_crit_edge ], [ %or2665, %if.then21 ], [ %op, %if.else17.if.end29_crit_edge ]
  %11 = and i16 %fid, 15
  %or3364 = or i16 %op.addr.0, %11
  br label %if.end35

if.end35:                                         ; preds = %if.end29, %if.then.if.end35_crit_edge
  %op.addr.1 = phi i16 [ %op, %if.then.if.end35_crit_edge ], [ %or3364, %if.end29 ]
  %12 = or i16 %op.addr.1, -32768
  %call39 = call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 11, i16 noundef zeroext %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %call.i68 = call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 11, i32 noundef 15, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end35.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i68, %if.end42 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %call13, %if.end9.cleanup_crit_edge ], [ %call39, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_getnext(ptr noundef %chip, i16 noundef zeroext %fid, ptr nocapture noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %val.i35 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 11, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %entry1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool2.not = icmp eq i8 %1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx4.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %5 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %call.i32 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 13, i16 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %if.then3
  %arrayidx.1.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %7 to i16
  %shl.1.i = shl nuw i16 %conv.1.i, 8
  %arrayidx4.1.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.1.i, align 1
  %conv5.1.i = zext i8 %9 to i16
  %or.1.i = or i16 %shl.1.i, %conv5.1.i
  %call.1.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 14, i16 noundef zeroext %or.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %mv88e6xxx_g1_atu_mac_write.exit, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6xxx_g1_atu_mac_write.exit:                  ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %11 to i16
  %shl.2.i = shl nuw i16 %conv.2.i, 8
  %arrayidx4.2.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 5
  %12 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx4.2.i, align 1
  %conv5.2.i = zext i8 %13 to i16
  %or.2.i = or i16 %shl.2.i, %conv5.2.i
  %call.2.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 15, i16 noundef zeroext %or.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool5.not = icmp eq i32 %call.2.i, 0
  br i1 %tobool5.not, label %mv88e6xxx_g1_atu_mac_write.exit.if.end8_crit_edge, label %mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge

mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_g1_atu_mac_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6xxx_g1_atu_mac_write.exit.if.end8_crit_edge: ; preds = %mv88e6xxx_g1_atu_mac_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.end8:                                          ; preds = %mv88e6xxx_g1_atu_mac_write.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %chip, i16 noundef zeroext %fid, i16 noundef zeroext 16384)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %val.i, align 2, !annotation !45
  %call.i33 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 12, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end.i, label %mv88e6xxx_g1_atu_data_read.exit

if.end.i:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %val.i, align 2
  %17 = trunc i16 %16 to i8
  %conv2.i = and i8 %17, 15
  %18 = ptrtoint ptr %entry1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv2.i, ptr %entry1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %tobool4.not.i = icmp eq i8 %conv2.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end16_crit_edge, label %if.then5.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %trunk.i = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 1
  %.lobit.i = lshr i16 %16, 15
  %19 = trunc i16 %.lobit.i to i8
  %20 = ptrtoint ptr %trunk.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %trunk.i, align 1
  %21 = lshr i16 %16, 4
  %22 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ports.i.i.i, align 4
  %sub1.i.i = sub i32 32, %25
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %conv.i.i = trunc i32 %shr.i.i to i16
  %and1322.i = and i16 %21, %conv.i.i
  %portvec.i = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 2
  %26 = ptrtoint ptr %portvec.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %and1322.i, ptr %portvec.i, align 2
  br label %if.end16

mv88e6xxx_g1_atu_data_read.exit:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %cleanup

if.end16:                                         ; preds = %if.then5.i, %if.end.i.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i35) #5
  %27 = ptrtoint ptr %val.i35 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %val.i35, align 2, !annotation !45
  %call.i36 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 13, ptr noundef nonnull %val.i35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %if.end.i42, label %if.end16.mv88e6xxx_g1_atu_mac_read.exit_crit_edge

if.end16.mv88e6xxx_g1_atu_mac_read.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_mac_read.exit

if.end.i42:                                       ; preds = %if.end16
  %28 = ptrtoint ptr %val.i35 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %val.i35, align 2
  %30 = lshr i16 %29, 8
  %conv2.i38 = trunc i16 %30 to i8
  %arrayidx.i39 = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 0
  %31 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv2.i38, ptr %arrayidx.i39, align 1
  %conv4.i = trunc i16 %29 to i8
  %arrayidx8.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv4.i, ptr %arrayidx8.i, align 1
  %call.1.i40 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 14, ptr noundef nonnull %val.i35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i40)
  %tobool.not.1.i41 = icmp eq i32 %call.1.i40, 0
  br i1 %tobool.not.1.i41, label %if.end.1.i, label %if.end.i42.mv88e6xxx_g1_atu_mac_read.exit_crit_edge

if.end.i42.mv88e6xxx_g1_atu_mac_read.exit_crit_edge: ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_mac_read.exit

if.end.1.i:                                       ; preds = %if.end.i42
  %33 = ptrtoint ptr %val.i35 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %val.i35, align 2
  %35 = lshr i16 %34, 8
  %conv2.1.i = trunc i16 %35 to i8
  %arrayidx.1.i43 = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %arrayidx.1.i43 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv2.1.i, ptr %arrayidx.1.i43, align 1
  %conv4.1.i = trunc i16 %34 to i8
  %arrayidx8.1.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv4.1.i, ptr %arrayidx8.1.i, align 1
  %call.2.i44 = call i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef 15, ptr noundef nonnull %val.i35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i44)
  %tobool.not.2.i = icmp eq i32 %call.2.i44, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit_crit_edge

if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_mac_read.exit

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %val.i35 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %val.i35, align 2
  %40 = lshr i16 %39, 8
  %conv2.2.i = trunc i16 %40 to i8
  %arrayidx.2.i45 = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 4
  %41 = ptrtoint ptr %arrayidx.2.i45 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv2.2.i, ptr %arrayidx.2.i45, align 1
  %conv4.2.i = trunc i16 %39 to i8
  %arrayidx8.2.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv4.2.i, ptr %arrayidx8.2.i, align 1
  br label %mv88e6xxx_g1_atu_mac_read.exit

mv88e6xxx_g1_atu_mac_read.exit:                   ; preds = %if.end.2.i, %if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit_crit_edge, %if.end.i42.mv88e6xxx_g1_atu_mac_read.exit_crit_edge, %if.end16.mv88e6xxx_g1_atu_mac_read.exit_crit_edge
  %retval.0.i46 = phi i32 [ %call.i36, %if.end16.mv88e6xxx_g1_atu_mac_read.exit_crit_edge ], [ %call.1.i40, %if.end.i42.mv88e6xxx_g1_atu_mac_read.exit_crit_edge ], [ %call.2.i44, %if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit_crit_edge ], [ 0, %if.end.2.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i35) #5
  br label %cleanup

cleanup:                                          ; preds = %mv88e6xxx_g1_atu_mac_read.exit, %mv88e6xxx_g1_atu_data_read.exit, %if.end8.cleanup_crit_edge, %mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i46, %mv88e6xxx_g1_atu_mac_read.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.2.i, %mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call.i33, %mv88e6xxx_g1_atu_data_read.exit ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i32, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_loadpurge(ptr noundef %chip, i16 noundef zeroext %fid, ptr nocapture noundef readonly %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 11, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 0
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %1 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx4.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %3 to i16
  %or.i = or i16 %shl.i, %conv5.i
  %call.i20 = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 13, i16 noundef zeroext %or.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %if.end
  %arrayidx.1.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %5 to i16
  %shl.1.i = shl nuw i16 %conv.1.i, 8
  %arrayidx4.1.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4.1.i, align 1
  %conv5.1.i = zext i8 %7 to i16
  %or.1.i = or i16 %shl.1.i, %conv5.1.i
  %call.1.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 14, i16 noundef zeroext %or.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %mv88e6xxx_g1_atu_mac_write.exit, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mv88e6xxx_g1_atu_mac_write.exit:                  ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 4
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %9 to i16
  %shl.2.i = shl nuw i16 %conv.2.i, 8
  %arrayidx4.2.i = getelementptr %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx4.2.i, align 1
  %conv5.2.i = zext i8 %11 to i16
  %or.2.i = or i16 %shl.2.i, %conv5.2.i
  %call.2.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 15, i16 noundef zeroext %or.2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool3.not = icmp eq i32 %call.2.i, 0
  br i1 %tobool3.not, label %if.end5, label %mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge

mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_g1_atu_mac_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %mv88e6xxx_g1_atu_mac_write.exit
  %12 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %entry1, align 2
  %14 = and i8 %13, 15
  %conv2.i = zext i8 %14 to i16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i21 = icmp eq i8 %13, 0
  br i1 %tobool.not.i21, label %if.end5.mv88e6xxx_g1_atu_data_write.exit_crit_edge, label %if.then.i

if.end5.mv88e6xxx_g1_atu_data_write.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_data_write.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %trunk.i = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 1
  %15 = ptrtoint ptr %trunk.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %trunk.i, align 1, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool4.not.i = icmp eq i8 %16, 0
  %or.i22 = or i16 %conv2.i, -32768
  %data.0.i = select i1 %tobool4.not.i, i16 %conv2.i, i16 %or.i22
  %portvec.i = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 2
  %17 = ptrtoint ptr %portvec.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %portvec.i, align 2
  %19 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_ports.i.i.i, align 4
  %sub1.i.i = sub i32 32, %22
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %conv.i.i = trunc i32 %shr.i.i to i16
  %and1022.i = and i16 %18, %conv.i.i
  %shl.i23 = shl i16 %and1022.i, 4
  %or12.i = or i16 %shl.i23, %data.0.i
  br label %mv88e6xxx_g1_atu_data_write.exit

mv88e6xxx_g1_atu_data_write.exit:                 ; preds = %if.then.i, %if.end5.mv88e6xxx_g1_atu_data_write.exit_crit_edge
  %data.1.i = phi i16 [ %or12.i, %if.then.i ], [ %conv2.i, %if.end5.mv88e6xxx_g1_atu_data_write.exit_crit_edge ]
  %call15.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 12, i16 noundef zeroext %data.1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool7.not = icmp eq i32 %call15.i, 0
  br i1 %tobool7.not, label %if.end9, label %mv88e6xxx_g1_atu_data_write.exit.cleanup_crit_edge

mv88e6xxx_g1_atu_data_write.exit.cleanup_crit_edge: ; preds = %mv88e6xxx_g1_atu_data_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %mv88e6xxx_g1_atu_data_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call10 = tail call fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %chip, i16 noundef zeroext %fid, i16 noundef zeroext 12288)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %mv88e6xxx_g1_atu_data_write.exit.cleanup_crit_edge, %mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end9 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.2.i, %mv88e6xxx_g1_atu_mac_write.exit.cleanup_crit_edge ], [ %call15.i, %mv88e6xxx_g1_atu_data_write.exit.cleanup_crit_edge ], [ %call.1.i, %for.cond.i.cleanup_crit_edge ], [ %call.i20, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_flush(ptr noundef %chip, i16 noundef zeroext %fid, i1 noundef zeroext %all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 11, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %mv88e6xxx_g1_atu_data_write.exit.i, label %entry.mv88e6xxx_g1_atu_flushmove.exit_crit_edge

entry.mv88e6xxx_g1_atu_flushmove.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_flushmove.exit

mv88e6xxx_g1_atu_data_write.exit.i:               ; preds = %entry
  %call15.i.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 12, i16 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool3.not.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %mv88e6xxx_g1_atu_data_write.exit.i.mv88e6xxx_g1_atu_flushmove.exit_crit_edge

mv88e6xxx_g1_atu_data_write.exit.i.mv88e6xxx_g1_atu_flushmove.exit_crit_edge: ; preds = %mv88e6xxx_g1_atu_data_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_flushmove.exit

if.end5.i:                                        ; preds = %mv88e6xxx_g1_atu_data_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %all.not.i = xor i1 %all, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fid)
  %tobool7.not.i = icmp eq i16 %fid, 0
  %or.cond.i = or i1 %tobool7.not.i, %all.not.i
  %..i = select i1 %all, i16 4096, i16 8192
  %spec.select.i = select i1 %tobool7.not.i, i16 %..i, i16 24576
  %op.0.i = select i1 %or.cond.i, i16 %spec.select.i, i16 20480
  %call18.i = tail call fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %chip, i16 noundef zeroext %fid, i16 noundef zeroext %op.0.i) #5
  br label %mv88e6xxx_g1_atu_flushmove.exit

mv88e6xxx_g1_atu_flushmove.exit:                  ; preds = %if.end5.i, %mv88e6xxx_g1_atu_data_write.exit.i.mv88e6xxx_g1_atu_flushmove.exit_crit_edge, %entry.mv88e6xxx_g1_atu_flushmove.exit_crit_edge
  %retval.0.i = phi i32 [ %call18.i, %if.end5.i ], [ %call.i.i, %entry.mv88e6xxx_g1_atu_flushmove.exit_crit_edge ], [ %call15.i.i, %mv88e6xxx_g1_atu_data_write.exit.i.mv88e6xxx_g1_atu_flushmove.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_remove(ptr noundef %chip, i16 noundef zeroext %fid, i32 noundef %port, i1 noundef zeroext %all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %atu_move_port_mask = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %atu_move_port_mask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %atu_move_port_mask, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.mv88e6xxx_g1_atu_move.exit_crit_edge, label %cond.false.i.i.i

entry.mv88e6xxx_g1_atu_move.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_move.exit

cond.false.i.i.i:                                 ; preds = %entry
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %conv) #5
  %call.i.i.i = tail call i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef 11, i32 noundef 15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mv88e6xxx_g1_atu_data_write.exit.i.i, label %cond.false.i.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge

cond.false.i.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge: ; preds = %cond.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_move.exit

mv88e6xxx_g1_atu_data_write.exit.i.i:             ; preds = %cond.false.i.i.i
  %and.i = and i32 %conv, %port
  %shl.i = shl i32 %conv, %call.i.i.i.i
  %or.i = or i32 %shl.i, %and.i
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %num_ports.i.i.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_ports.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports.i.i.i.i.i, align 4
  %sub1.i.i.i.i = sub i32 32, %7
  %shr.i.i.i.i = lshr i32 -1, %sub1.i.i.i.i
  %and1022.i.i16.i = and i32 %shr.i.i.i.i, %or.i
  %and1022.i.i.i = trunc i32 %and1022.i.i16.i to i16
  %shl.i.i.i = shl i16 %and1022.i.i.i, 4
  %or12.i.i.i = or i16 %shl.i.i.i, 15
  %call15.i.i.i = tail call i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef 12, i16 noundef zeroext %or12.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool3.not.i.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %mv88e6xxx_g1_atu_data_write.exit.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge

mv88e6xxx_g1_atu_data_write.exit.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge: ; preds = %mv88e6xxx_g1_atu_data_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_move.exit

if.end5.i.i:                                      ; preds = %mv88e6xxx_g1_atu_data_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %all.not.i.i = xor i1 %all, true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fid)
  %tobool7.not.i.i = icmp eq i16 %fid, 0
  %or.cond.i.i = or i1 %tobool7.not.i.i, %all.not.i.i
  %..i.i = select i1 %all, i16 4096, i16 8192
  %spec.select.i.i = select i1 %tobool7.not.i.i, i16 %..i.i, i16 24576
  %op.0.i.i = select i1 %or.cond.i.i, i16 %spec.select.i.i, i16 20480
  %call18.i.i = tail call fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %chip, i16 noundef zeroext %fid, i16 noundef zeroext %op.0.i.i) #5
  br label %mv88e6xxx_g1_atu_move.exit

mv88e6xxx_g1_atu_move.exit:                       ; preds = %if.end5.i.i, %mv88e6xxx_g1_atu_data_write.exit.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge, %cond.false.i.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge, %entry.mv88e6xxx_g1_atu_move.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %entry.mv88e6xxx_g1_atu_move.exit_crit_edge ], [ %call18.i.i, %if.end5.i.i ], [ %call.i.i.i, %cond.false.i.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge ], [ %call15.i.i.i, %mv88e6xxx_g1_atu_data_write.exit.i.i.mv88e6xxx_g1_atu_move.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_atu_prob_irq_setup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 18, i32 2
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !45
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  %atu_prob_irq25 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 26
  %3 = ptrtoint ptr %atu_prob_irq25 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %atu_prob_irq25, align 4
  br label %if.end

irq_find_mapping.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  %atu_prob_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 26
  %6 = ptrtoint ptr %atu_prob_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %atu_prob_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %irq_find_mapping.exit.cleanup_crit_edge, label %irq_find_mapping.exit.if.end_crit_edge

irq_find_mapping.exit.if.end_crit_edge:           ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %irq_find_mapping.exit.if.end_crit_edge, %irq_find_mapping.exit.thread
  %atu_prob_irq27 = phi ptr [ %atu_prob_irq25, %irq_find_mapping.exit.thread ], [ %atu_prob_irq, %irq_find_mapping.exit.if.end_crit_edge ]
  %atu_prob_irq_name = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 27
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i22 = icmp eq ptr %10, null
  br i1 %tobool.not.i22, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i23 = phi ptr [ %12, %if.end.i ], [ %10, %if.end.dev_name.exit_crit_edge ]
  %call4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %atu_prob_irq_name, i32 noundef 64, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i23)
  %13 = ptrtoint ptr %atu_prob_irq27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %atu_prob_irq27, align 4
  %call8 = call i32 @request_threaded_irq(i32 noundef %14, ptr noundef null, ptr noundef nonnull @mv88e6xxx_g1_atu_prob_irq_thread_fn, i32 noundef 8192, ptr noundef %atu_prob_irq_name, ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.then9

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %atu_prob_irq27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %atu_prob_irq27, align 4
  call void @irq_dispose_mapping(i32 noundef %16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %dev_name.exit.cleanup_crit_edge, %irq_find_mapping.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %irq_find_mapping.exit.cleanup_crit_edge ], [ %call8, %if.then9 ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_g1_atu_prob_irq_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  %val.i121 = alloca i16, align 2
  %val.i = alloca i16, align 2
  %entry1 = alloca %struct.mv88e6xxx_atu_entry, align 2
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %entry1) #5
  %0 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 1
  %1 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3
  %3 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 2
  %5 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 3
  %6 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 4
  %7 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, ptr %entry1, i32 0, i32 3, i32 5
  %8 = call ptr @memset(ptr %entry1, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val, align 2, !annotation !45
  %reg_lock.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #5
  %call = tail call fastcc i32 @mv88e6xxx_g1_atu_op(ptr noundef %dev_id, i16 noundef zeroext 0, i16 noundef zeroext 28672)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %call2 = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 11, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #5
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i, align 2, !annotation !45
  %call.i = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 12, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %mv88e6xxx_g1_atu_data_read.exit

if.end.i:                                         ; preds = %if.end5
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %val.i, align 2
  %13 = trunc i16 %12 to i8
  %conv2.i = and i8 %13, 15
  %14 = ptrtoint ptr %entry1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2.i, ptr %entry1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i)
  %tobool4.not.i = icmp eq i8 %conv2.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end9_crit_edge, label %if.then5.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %.lobit.i = lshr i16 %12, 15
  %15 = trunc i16 %.lobit.i to i8
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %0, align 1
  %17 = lshr i16 %12, 4
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 8
  %num_ports.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %num_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_ports.i.i.i, align 4
  %sub1.i.i = sub i32 32, %21
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %conv.i.i = trunc i32 %shr.i.i to i16
  %and1322.i = and i16 %17, %conv.i.i
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %and1322.i, ptr %1, align 2
  br label %if.end9

mv88e6xxx_g1_atu_data_read.exit:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  br label %out

if.end9:                                          ; preds = %if.then5.i, %if.end.i.if.end9_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i121) #5
  %23 = ptrtoint ptr %val.i121 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -1, ptr %val.i121, align 2, !annotation !45
  %call.i122 = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 13, ptr noundef nonnull %val.i121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i123 = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i123, label %if.end.i125, label %if.end9.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge

if.end9.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_mac_read.exit.thread

if.end.i125:                                      ; preds = %if.end9
  %24 = ptrtoint ptr %val.i121 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val.i121, align 2
  %26 = lshr i16 %25, 8
  %conv2.i124 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i124, ptr %2, align 2
  %conv4.i = trunc i16 %25 to i8
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i, ptr %3, align 1
  %call.1.i = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 14, ptr noundef nonnull %val.i121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i125.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge

if.end.i125.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge: ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_mac_read.exit.thread

if.end.1.i:                                       ; preds = %if.end.i125
  %29 = ptrtoint ptr %val.i121 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %val.i121, align 2
  %31 = lshr i16 %30, 8
  %conv2.1.i = trunc i16 %31 to i8
  %32 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv2.1.i, ptr %4, align 2
  %conv4.1.i = trunc i16 %30 to i8
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv4.1.i, ptr %5, align 1
  %call.2.i = call i32 @mv88e6xxx_g1_read(ptr noundef %dev_id, i32 noundef 15, ptr noundef nonnull %val.i121) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end13, label %if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge

if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mv88e6xxx_g1_atu_mac_read.exit.thread

mv88e6xxx_g1_atu_mac_read.exit.thread:            ; preds = %if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge, %if.end.i125.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge, %if.end9.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.2.i, %if.end.1.i.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge ], [ %call.1.i, %if.end.i125.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge ], [ %call.i122, %if.end9.mv88e6xxx_g1_atu_mac_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i121) #5
  br label %out

if.end13:                                         ; preds = %if.end.1.i
  %34 = ptrtoint ptr %val.i121 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %val.i121, align 2
  %36 = lshr i16 %35, 8
  %conv2.2.i = trunc i16 %36 to i8
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv2.2.i, ptr %6, align 2
  %conv4.2.i = trunc i16 %35 to i8
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv4.2.i, ptr %7, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i121) #5
  %39 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %entry1, align 2
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %val, align 2
  %43 = and i16 %42, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool15.not = icmp eq i16 %43, 0
  br i1 %tobool15.not, label %if.end13.if.end24_crit_edge, label %do.body

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.body:                                          ; preds = %if.end13
  %call17 = call i32 @___ratelimit(ptr noundef nonnull @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs, ptr noundef nonnull @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body.if.end24_crit_edge, label %do.end

do.body.if.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.6, ptr noundef %2) #8
  br label %if.end24

if.end24:                                         ; preds = %do.end, %do.body.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %val, align 2
  %48 = and i16 %47, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %tobool27.not = icmp eq i16 %48, 0
  br i1 %tobool27.not, label %if.end24.if.end43_crit_edge, label %do.body29

if.end24.if.end43_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

do.body29:                                        ; preds = %if.end24
  %call30 = call i32 @___ratelimit(ptr noundef nonnull @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.9, ptr noundef nonnull @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %do.body29.do.end42_crit_edge, label %do.end35

do.body29.do.end42_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end42

do.end35:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %dev36 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %49 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev36, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %1, align 2
  %conv39 = zext i16 %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.11, ptr noundef %2, i32 noundef %conv39, i32 noundef %conv) #8
  br label %do.end42

do.end42:                                         ; preds = %do.end35, %do.body29.do.end42_crit_edge
  %atu_member_violation = getelementptr %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 46, i32 %conv, i32 4
  %53 = ptrtoint ptr %atu_member_violation to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %atu_member_violation, align 8
  %inc = add i64 %54, 1
  store i64 %inc, ptr %atu_member_violation, align 8
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %if.end24.if.end43_crit_edge
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val, align 2
  %57 = and i16 %56, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool46.not = icmp eq i16 %57, 0
  br i1 %tobool46.not, label %if.end43.if.end66_crit_edge, label %do.body48

if.end43.if.end66_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

do.body48:                                        ; preds = %if.end43
  %call49 = call i32 @___ratelimit(ptr noundef nonnull @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.13, ptr noundef nonnull @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %do.body48.do.end62_crit_edge, label %do.end54

do.body48.do.end62_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

do.end54:                                         ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %dev55 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %58 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev55, align 4
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %1, align 2
  %conv59 = zext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15, ptr noundef %2, i32 noundef %conv59, i32 noundef %conv) #8
  br label %do.end62

do.end62:                                         ; preds = %do.end54, %do.body48.do.end62_crit_edge
  %atu_miss_violation = getelementptr %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 46, i32 %conv, i32 5
  %62 = ptrtoint ptr %atu_miss_violation to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %atu_miss_violation, align 8
  %inc65 = add i64 %63, 1
  store i64 %inc65, ptr %atu_miss_violation, align 8
  br label %if.end66

if.end66:                                         ; preds = %do.end62, %if.end43.if.end66_crit_edge
  %64 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %val, align 2
  %66 = and i16 %65, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool69.not = icmp eq i16 %66, 0
  br i1 %tobool69.not, label %if.end66.if.end89_crit_edge, label %do.body71

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end89

do.body71:                                        ; preds = %if.end66
  %call72 = call i32 @___ratelimit(ptr noundef nonnull @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.17, ptr noundef nonnull @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %do.body71.do.end85_crit_edge, label %do.end77

do.body71.do.end85_crit_edge:                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end85

do.end77:                                         ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #7
  %dev78 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %67 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev78, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %1, align 2
  %conv82 = zext i16 %70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.19, ptr noundef %2, i32 noundef %conv82, i32 noundef %conv) #8
  br label %do.end85

do.end85:                                         ; preds = %do.end77, %do.body71.do.end85_crit_edge
  %atu_full_violation = getelementptr %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 46, i32 %conv, i32 6
  %71 = ptrtoint ptr %atu_full_violation to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %atu_full_violation, align 8
  %inc88 = add i64 %72, 1
  store i64 %inc88, ptr %atu_full_violation, align 8
  br label %if.end89

if.end89:                                         ; preds = %do.end85, %if.end66.if.end89_crit_edge
  call void @mutex_unlock(ptr noundef %reg_lock.i) #5
  br label %cleanup

out:                                              ; preds = %mv88e6xxx_g1_atu_mac_read.exit.thread, %mv88e6xxx_g1_atu_data_read.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call2, %if.end.out_crit_edge ], [ %call.i, %mv88e6xxx_g1_atu_data_read.exit ], [ %retval.0.i.ph, %mv88e6xxx_g1_atu_mac_read.exit.thread ]
  call void @mutex_unlock(ptr noundef %reg_lock.i) #5
  %dev93 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %dev_id, i32 0, i32 3
  %73 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.22, i32 noundef %err.0) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end89
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %entry1) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_g1_atu_prob_irq_free(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %atu_prob_irq = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 26
  %0 = ptrtoint ptr %atu_prob_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %atu_prob_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %chip) #5
  %2 = ptrtoint ptr %atu_prob_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %atu_prob_irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_g1_wait_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 70, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mv88e6xxx_g1_atu_set_age_time.__UNIQUE_ID_ddebug497, !1, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 429, i32 4}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 382, i32 3}
!10 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @__func__.mv88e6xxx_g1_atu_prob_irq_thread_fn, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry, !9, !"_entry", i1 false, i1 false}
!16 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.9, !18, !"_rs", i1 false, i1 false}
!18 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 388, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.10, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.13, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 395, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.14, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._rs.17, !28, !"_rs", i1 false, i1 false}
!28 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 402, i32 3}
!29 = !{ptr @.str.19, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.18, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.20, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/mv88e6xxx/global1_atu.c", i32 414, i32 2}
!34 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mv88e6xxx_g1_atu_prob_irq_thread_fn._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
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
!46 = !{i64 2148756958, i64 2148756963, i64 2148756976, i64 2148757020, i64 2148757054, i64 2148757075}
!47 = !{i8 0, i8 2}
