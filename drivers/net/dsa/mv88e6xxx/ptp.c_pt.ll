; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/ptp.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/ptp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv88e6xxx_ptp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv88e6xxx_avb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_request = type { i32, %union.anon.126 }
%union.anon.126 = type { %struct.ptp_perout_request }
%struct.ptp_perout_request = type { %union.anon.127, %struct.ptp_clock_time, i32, i32, %union.anon.128 }
%union.anon.127 = type { %struct.ptp_clock_time }
%struct.ptp_clock_time = type { i64, i32, i32 }
%union.anon.128 = type { %struct.ptp_clock_time }
%struct.ptp_extts_request = type { i32, i32, [2 x i32] }
%struct.mv88e6xxx_gpio_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ptp_clock_event = type { i32, i32, %union.anon.168 }
%union.anon.168 = type { %struct.pps_event_time }
%struct.pps_event_time = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i32 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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

@mv88e6165_ptp_ops = dso_local constant { %struct.mv88e6xxx_ptp_ops, [60 x i8] } { %struct.mv88e6xxx_ptp_ops { ptr @mv88e6165_ptp_clock_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mv88e6165_global_enable, ptr @mv88e6165_global_disable, i32 0, i32 0, i32 4, i32 8, i32 32257, i32 28, i32 -2147483648, i32 512, i32 15625 }, [60 x i8] zeroinitializer }, align 32
@mv88e6250_ptp_ops = dso_local constant { %struct.mv88e6xxx_ptp_ops, [60 x i8] } { %struct.mv88e6xxx_ptp_ops { ptr @mv88e6352_ptp_clock_read, ptr @mv88e6352_ptp_enable, ptr @mv88e6352_ptp_verify, ptr @mv88e6352_tai_event_work, ptr @mv88e6352_hwtstamp_port_enable, ptr @mv88e6352_hwtstamp_port_disable, ptr null, ptr null, i32 1, i32 8, i32 12, i32 16, i32 32705, i32 28, i32 -1610612736, i32 128, i32 3125 }, [60 x i8] zeroinitializer }, align 32
@mv88e6352_ptp_ops = dso_local constant { %struct.mv88e6xxx_ptp_ops, [60 x i8] } { %struct.mv88e6xxx_ptp_ops { ptr @mv88e6352_ptp_clock_read, ptr @mv88e6352_ptp_enable, ptr @mv88e6352_ptp_verify, ptr @mv88e6352_tai_event_work, ptr @mv88e6352_hwtstamp_port_enable, ptr @mv88e6352_hwtstamp_port_disable, ptr null, ptr null, i32 1, i32 8, i32 12, i32 16, i32 32705, i32 28, i32 -2147483648, i32 512, i32 15625 }, [60 x i8] zeroinitializer }, align 32
@mv88e6xxx_ptp_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&chip->overflow_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@mv88e6xxx_ptp_setup.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&chip->overflow_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@mv88e6xxx_ptp_setup.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&(&chip->tai_event_work)->work)\00", [46 x i8] zeroinitializer }, align 32
@mv88e6xxx_ptp_setup.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&(&chip->tai_event_work)->timer\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mv88e6xxx_gpio%d\00", [47 x i8] zeroinitializer }, align 32
@mv88e6352_tai_event_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 167, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read TAI status register\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mv88e6352_tai_event_work\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/dsa/mv88e6xxx/ptp.c\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6352_tai_event_work._entry_ptr = internal global ptr @mv88e6352_tai_event_work._entry, section ".printk_index", align 4
@mv88e6352_tai_event_work._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 171, ptr @.str.16, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"missed event capture\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mv88e6352_tai_event_work._entry_ptr.17 = internal global ptr @mv88e6352_tai_event_work._entry.14, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"mv88e6165_ptp_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 348, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"mv88e6250_ptp_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 368, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"mv88e6352_ptp_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 395, i32 32 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 463, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 465, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 469, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 479, i32 42 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 167, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [35 x i8] c"../drivers/net/dsa/mv88e6xxx/ptp.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 171, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @mv88e6352_tai_event_work._entry, ptr @mv88e6352_tai_event_work._entry.14, ptr @mv88e6352_tai_event_work._entry_ptr, ptr @mv88e6352_tai_event_work._entry_ptr.17, ptr @mv88e6165_ptp_ops, ptr @mv88e6250_ptp_ops, ptr @mv88e6352_ptp_ops, ptr @mv88e6xxx_ptp_setup.__key, ptr @.str, ptr @mv88e6xxx_ptp_setup.__key.1, ptr @.str.2, ptr @mv88e6xxx_ptp_setup.__key.3, ptr @.str.4, ptr @mv88e6xxx_ptp_setup.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6165_ptp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6250_ptp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_ptp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_ptp_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_ptp_setup.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_ptp_setup.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_ptp_setup.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_tai_event_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6352_tai_event_work._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6165_ptp_clock_read(ptr noundef %cc) #0 align 64 {
entry:
  %phc_time = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cc, i32 -1192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phc_time) #7
  %0 = ptrtoint ptr %phc_time to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phc_time, align 2, !annotation !42
  %1 = getelementptr inbounds [2 x i16], ptr %phc_time, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !42
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %6, i32 0, i32 63
  %7 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %avb_ops.i, align 4
  %tai_read.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %tai_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tai_read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_tai_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mv88e6xxx_tai_read.exit:                          ; preds = %entry
  %call.i = call i32 %10(ptr noundef %add.ptr, i32 noundef 9, ptr noundef nonnull %phc_time, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %mv88e6xxx_tai_read.exit.cleanup_crit_edge

mv88e6xxx_tai_read.exit.cleanup_crit_edge:        ; preds = %mv88e6xxx_tai_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %mv88e6xxx_tai_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %conv = zext i16 %12 to i32
  %shl = shl nuw i32 %conv, 16
  %13 = ptrtoint ptr %phc_time to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phc_time, align 2
  %conv2 = zext i16 %14 to i32
  %or = or i32 %shl, %conv2
  %conv3 = zext i32 %or to i64
  br label %cleanup

cleanup:                                          ; preds = %if.else, %mv88e6xxx_tai_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv3, %if.else ], [ 0, %mv88e6xxx_tai_read.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phc_time) #7
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6165_global_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6165_global_disable(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6352_ptp_clock_read(ptr noundef %cc) #0 align 64 {
entry:
  %phc_time = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cc, i32 -1192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phc_time) #7
  %0 = ptrtoint ptr %phc_time to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %phc_time, align 2, !annotation !42
  %1 = getelementptr inbounds [2 x i16], ptr %phc_time, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !42
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 22
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %6, i32 0, i32 63
  %7 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %avb_ops.i, align 4
  %tai_read.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %tai_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tai_read.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %mv88e6xxx_tai_read.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mv88e6xxx_tai_read.exit:                          ; preds = %entry
  %call.i = call i32 %10(ptr noundef %add.ptr, i32 noundef 14, ptr noundef nonnull %phc_time, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.else, label %mv88e6xxx_tai_read.exit.cleanup_crit_edge

mv88e6xxx_tai_read.exit.cleanup_crit_edge:        ; preds = %mv88e6xxx_tai_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %mv88e6xxx_tai_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %1, align 2
  %conv = zext i16 %12 to i32
  %shl = shl nuw i32 %conv, 16
  %13 = ptrtoint ptr %phc_time to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %phc_time, align 2
  %conv2 = zext i16 %14 to i32
  %or = or i32 %shl, %conv2
  %conv3 = zext i32 %or to i64
  br label %cleanup

cleanup:                                          ; preds = %if.else, %mv88e6xxx_tai_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %conv3, %if.else ], [ 0, %mv88e6xxx_tai_read.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phc_time) #7
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6352_ptp_enable(ptr noundef %ptp, ptr nocapture noundef readonly %rq, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %ptp, i32 -1360
  %2 = getelementptr inbounds %struct.ptp_clock_request, ptr %rq, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.ptp_extts_request, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %4)
  %tobool.not.i = icmp ugt i32 %4, 15
  %5 = and i32 %4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %6 = icmp eq i32 %5, 15
  %or.cond.i = or i1 %tobool.not.i, %6
  br i1 %or.cond.i, label %sw.bb.cleanup_crit_edge, label %if.end13.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %sw.bb
  %ptp_clock.i = getelementptr i8, ptr %ptp, i32 -4
  %7 = ptrtoint ptr %ptp_clock.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptp_clock.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 8
  %call.i = tail call i32 @ptp_find_pin(ptr noundef %8, i32 noundef 1, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14.i = icmp slt i32 %call.i, 0
  br i1 %cmp14.i, label %if.end13.i.cleanup_crit_edge, label %if.end16.i

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16.i:                                       ; preds = %if.end13.i
  %reg_lock.i.i = getelementptr i8, ptr %ptp, i32 -1344
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool17.not.i = icmp eq i32 %on, 0
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %ops.i53.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %ops.i53.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i53.i, align 4
  %gpio_ops.i54.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %14, i32 0, i32 62
  %15 = ptrtoint ptr %gpio_ops.i54.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gpio_ops.i54.i, align 4
  %tobool.not.i55.i = icmp eq ptr %16, null
  br i1 %tobool17.not.i, label %if.else.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i
  br i1 %tobool.not.i55.i, label %if.then18.i.out.i_crit_edge, label %if.end.i.i

if.then18.i.out.i_crit_edge:                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end.i.i:                                       ; preds = %if.then18.i
  %set_dir.i.i = getelementptr inbounds %struct.mv88e6xxx_gpio_ops, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %set_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_dir.i.i, align 4
  %call.i.i = tail call i32 %18(ptr noundef %add.ptr, i32 noundef %call.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %mv88e6352_set_gpio_func.exit.i, label %if.end.i.i.out.i_crit_edge

if.end.i.i.out.i_crit_edge:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

mv88e6352_set_gpio_func.exit.i:                   ; preds = %if.end.i.i
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %ops9.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %ops9.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops9.i.i, align 4
  %gpio_ops10.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %22, i32 0, i32 62
  %23 = ptrtoint ptr %gpio_ops10.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpio_ops10.i.i, align 4
  %set_pctl.i.i = getelementptr inbounds %struct.mv88e6xxx_gpio_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %set_pctl.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_pctl.i.i, align 4
  %call11.i.i = tail call i32 %26(ptr noundef %add.ptr, i32 noundef %call.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool20.not.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %mv88e6352_set_gpio_func.exit.i.out.i_crit_edge

mv88e6352_set_gpio_func.exit.i.out.i_crit_edge:   ; preds = %mv88e6352_set_gpio_func.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end22.i:                                       ; preds = %mv88e6352_set_gpio_func.exit.i
  %tai_event_work.i = getelementptr i8, ptr %ptp, i32 108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %tai_event_work.i, i32 noundef 10) #7
  %evcap_config.i.i = getelementptr i8, ptr %ptp, i32 1746
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i50.i = icmp eq i32 %and.i, 0
  %spec.select.i.i = select i1 %tobool.not.i50.i, i16 -8192, i16 -16384
  %28 = ptrtoint ptr %evcap_config.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %spec.select.i.i, ptr %evcap_config.i.i, align 2
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %ops.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops.i.i.i, align 4
  %avb_ops.i.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %32, i32 0, i32 63
  %33 = ptrtoint ptr %avb_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %avb_ops.i.i.i, align 4
  %tai_write.i.i.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %tai_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tai_write.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.end22.i.out.i_crit_edge, label %mv88e6xxx_tai_write.exit.i.i

if.end22.i.out.i_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

mv88e6xxx_tai_write.exit.i.i:                     ; preds = %if.end22.i
  %trig_config.i.i = getelementptr i8, ptr %ptp, i32 1744
  %37 = ptrtoint ptr %trig_config.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %trig_config.i.i, align 8
  %or61.i.i = or i16 %38, %spec.select.i.i
  %call.i.i51.i = tail call i32 %36(ptr noundef %add.ptr, i32 noundef 0, i16 noundef zeroext %or61.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i51.i, 0
  br i1 %tobool8.not.i.i, label %if.end18.i.i, label %mv88e6xxx_tai_write.exit.i.i.out.i_crit_edge

mv88e6xxx_tai_write.exit.i.i.out.i_crit_edge:     ; preds = %mv88e6xxx_tai_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end18.i.i:                                     ; preds = %mv88e6xxx_tai_write.exit.i.i
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %ops.i2.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %40, i32 0, i32 22
  %41 = ptrtoint ptr %ops.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ops.i2.i.i, align 4
  %avb_ops.i3.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %42, i32 0, i32 63
  %43 = ptrtoint ptr %avb_ops.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %avb_ops.i3.i.i, align 4
  %tai_write.i4.i.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %tai_write.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tai_write.i4.i.i, align 4
  %tobool.not.i5.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i5.i.i, label %if.end18.i.i.out.i_crit_edge, label %if.end.i7.i.i

if.end18.i.i.out.i_crit_edge:                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.end.i7.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i6.i.i = tail call i32 %46(ptr noundef %add.ptr, i32 noundef 9, i16 noundef zeroext 0) #7
  br label %out.i

if.else.i:                                        ; preds = %if.end16.i
  br i1 %tobool.not.i55.i, label %if.else.i.mv88e6352_set_gpio_func.exit66.i_crit_edge, label %if.end.i59.i

if.else.i.mv88e6352_set_gpio_func.exit66.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6352_set_gpio_func.exit66.i

if.end.i59.i:                                     ; preds = %if.else.i
  %set_dir.i56.i = getelementptr inbounds %struct.mv88e6xxx_gpio_ops, ptr %16, i32 0, i32 3
  %47 = ptrtoint ptr %set_dir.i56.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_dir.i56.i, align 4
  %call.i57.i = tail call i32 %48(ptr noundef %add.ptr, i32 noundef %call.i, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57.i)
  %tobool5.not.i58.i = icmp eq i32 %call.i57.i, 0
  br i1 %tobool5.not.i58.i, label %if.end7.i64.i, label %if.end.i59.i.mv88e6352_set_gpio_func.exit66.i_crit_edge

if.end.i59.i.mv88e6352_set_gpio_func.exit66.i_crit_edge: ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6352_set_gpio_func.exit66.i

if.end7.i64.i:                                    ; preds = %if.end.i59.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 8
  %ops9.i60.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %50, i32 0, i32 22
  %51 = ptrtoint ptr %ops9.i60.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops9.i60.i, align 4
  %gpio_ops10.i61.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %52, i32 0, i32 62
  %53 = ptrtoint ptr %gpio_ops10.i61.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %gpio_ops10.i61.i, align 4
  %set_pctl.i62.i = getelementptr inbounds %struct.mv88e6xxx_gpio_ops, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %set_pctl.i62.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_pctl.i62.i, align 4
  %call11.i63.i = tail call i32 %56(ptr noundef %add.ptr, i32 noundef %call.i, i32 noundef 0) #7
  br label %mv88e6352_set_gpio_func.exit66.i

mv88e6352_set_gpio_func.exit66.i:                 ; preds = %if.end7.i64.i, %if.end.i59.i.mv88e6352_set_gpio_func.exit66.i_crit_edge, %if.else.i.mv88e6352_set_gpio_func.exit66.i_crit_edge
  %retval.0.i65.i = phi i32 [ %call11.i63.i, %if.end7.i64.i ], [ -95, %if.else.i.mv88e6352_set_gpio_func.exit66.i_crit_edge ], [ %call.i57.i, %if.end.i59.i.mv88e6352_set_gpio_func.exit66.i_crit_edge ]
  %tai_event_work27.i = getelementptr i8, ptr %ptp, i32 108
  %call28.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tai_event_work27.i) #7
  br label %out.i

out.i:                                            ; preds = %mv88e6352_set_gpio_func.exit66.i, %if.end.i7.i.i, %if.end18.i.i.out.i_crit_edge, %mv88e6xxx_tai_write.exit.i.i.out.i_crit_edge, %if.end22.i.out.i_crit_edge, %mv88e6352_set_gpio_func.exit.i.out.i_crit_edge, %if.end.i.i.out.i_crit_edge, %if.then18.i.out.i_crit_edge
  %err.0.i = phi i32 [ %call11.i.i, %mv88e6352_set_gpio_func.exit.i.out.i_crit_edge ], [ %retval.0.i65.i, %mv88e6352_set_gpio_func.exit66.i ], [ %call.i.i51.i, %mv88e6xxx_tai_write.exit.i.i.out.i_crit_edge ], [ %call.i6.i.i, %if.end.i7.i.i ], [ -95, %if.end18.i.i.out.i_crit_edge ], [ -95, %if.end22.i.out.i_crit_edge ], [ %call.i.i, %if.end.i.i.out.i_crit_edge ], [ -95, %if.then18.i.out.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_lock.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out.i, %if.end13.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %err.0.i, %out.i ], [ -95, %sw.bb.cleanup_crit_edge ], [ -16, %if.end13.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv88e6352_ptp_verify(ptr nocapture noundef readnone %ptp, i32 noundef %pin, i32 noundef %func, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %func, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %switch = icmp eq i32 %0, 2
  %. = select i1 %switch, i32 -95, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6352_tai_event_work(ptr noundef %ugly) #0 align 64 {
entry:
  %ev = alloca %struct.ptp_clock_event, align 8
  %status = alloca [4 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ugly, i32 -1468
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ev) #7
  %0 = call ptr @memset(ptr %ev, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #7
  %1 = getelementptr inbounds [4 x i16], ptr %status, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i16], ptr %status, i32 0, i32 2
  %reg_lock.i = getelementptr i8, ptr %ugly, i32 -1452
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %status, align 8
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %avb_ops.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %7, i32 0, i32 63
  %8 = ptrtoint ptr %avb_ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %avb_ops.i, align 4
  %tai_read.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %tai_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tai_read.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %mv88e6xxx_tai_read.exit.thread, label %mv88e6xxx_tai_read.exit

mv88e6xxx_tai_read.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  br label %do.end

mv88e6xxx_tai_read.exit:                          ; preds = %entry
  %call.i = call i32 %11(ptr noundef %add.ptr, i32 noundef 9, ptr noundef nonnull %status, i32 noundef 4) #7
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6xxx_tai_read.exit.do.end_crit_edge

mv88e6xxx_tai_read.exit.do.end_crit_edge:         ; preds = %mv88e6xxx_tai_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %mv88e6xxx_tai_read.exit.do.end_crit_edge, %mv88e6xxx_tai_read.exit.thread
  %dev = getelementptr i8, ptr %ugly, i32 -1456
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end:                                           ; preds = %mv88e6xxx_tai_read.exit
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %status, align 8
  %conv = zext i16 %15 to i32
  %and = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr i8, ptr %ugly, i32 -1456
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %and11 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.out_crit_edge, label %if.end14

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end14:                                         ; preds = %if.end8
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %2, align 4
  %conv16 = zext i16 %19 to i32
  %shl = shl nuw i32 %conv16, 16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 2
  %conv18 = zext i16 %21 to i32
  %or = or i32 %shl, %conv18
  %and21 = and i16 %15, -257
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %and21, ptr %status, align 8
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 8
  %ops.i48 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %ops.i48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i48, align 4
  %avb_ops.i49 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %26, i32 0, i32 63
  %27 = ptrtoint ptr %avb_ops.i49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %avb_ops.i49, align 4
  %tai_write.i = getelementptr inbounds %struct.mv88e6xxx_avb_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %tai_write.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tai_write.i, align 4
  %tobool.not.i50 = icmp eq ptr %30, null
  br i1 %tobool.not.i50, label %if.end14.mv88e6xxx_tai_write.exit_crit_edge, label %if.end.i52

if.end14.mv88e6xxx_tai_write.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %mv88e6xxx_tai_write.exit

if.end.i52:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %status, align 8
  %call.i51 = call i32 %30(ptr noundef %add.ptr, i32 noundef 9, i16 noundef zeroext %32) #7
  br label %mv88e6xxx_tai_write.exit

mv88e6xxx_tai_write.exit:                         ; preds = %if.end.i52, %if.end14.mv88e6xxx_tai_write.exit_crit_edge
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %33 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %ev, align 8
  %index = getelementptr inbounds %struct.ptp_clock_event, ptr %ev, i32 0, i32 1
  %34 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %index, align 4
  call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %tstamp_tc = getelementptr i8, ptr %ugly, i32 -252
  %conv25 = zext i32 %or to i64
  %call26 = call i64 @timecounter_cyc2time(ptr noundef %tstamp_tc, i64 noundef %conv25) #7
  %35 = getelementptr inbounds %struct.ptp_clock_event, ptr %ev, i32 0, i32 2
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call26, ptr %35, align 8
  call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  %ptp_clock = getelementptr i8, ptr %ugly, i32 -112
  %37 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ptp_clock, align 4
  call void @ptp_clock_event(ptr noundef %38, ptr noundef nonnull %ev) #7
  br label %out

out:                                              ; preds = %mv88e6xxx_tai_write.exit, %if.end8.out_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %ugly, i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6352_hwtstamp_port_enable(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6352_hwtstamp_port_disable(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_ptp_setup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ptp_ops1 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %ptp_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_ops1, align 4
  %tstamp_cc = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 33
  %6 = call ptr @memset(ptr %tstamp_cc, i32 0, i32 24)
  %7 = ptrtoint ptr %tstamp_cc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mv88e6xxx_ptp_clock_read, ptr %tstamp_cc, align 8
  %mask = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 33, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4294967295, ptr %mask, align 8
  %cc_mult = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 14
  %9 = ptrtoint ptr %cc_mult to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cc_mult, align 4
  %mult = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 33, i32 2
  %11 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mult, align 8
  %cc_shift = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 13
  %12 = ptrtoint ptr %cc_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cc_shift, align 4
  %shift = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 33, i32 3
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %shift, align 4
  %tstamp_tc = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 34
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #7
  tail call void @timecounter_init(ptr noundef %tstamp_tc, ptr noundef %tstamp_cc, i64 noundef %call.i) #7
  %overflow_work = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35
  tail call void @__init_work(ptr noundef %overflow_work, i32 noundef 0) #7
  %15 = ptrtoint ptr %overflow_work to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %overflow_work, align 8
  %lockdep_map = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @mv88e6xxx_ptp_setup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry15 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35, i32 0, i32 1
  %16 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mv88e6xxx_ptp_overflow_check, ptr %func, align 4
  %timer = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @mv88e6xxx_ptp_setup.__key.1) #7
  %event_work = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %event_work to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %event_work, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tai_event_work = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38
  tail call void @__init_work(ptr noundef %tai_event_work, i32 noundef 0) #7
  %21 = ptrtoint ptr %tai_event_work to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -64, ptr %tai_event_work, align 4
  %lockdep_map34 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map34, ptr noundef nonnull @.str.4, ptr noundef nonnull @mv88e6xxx_ptp_setup.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry37 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38, i32 0, i32 1
  %22 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i147 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i147 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry37, ptr %prev.i147, align 4
  %24 = ptrtoint ptr %event_work to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %event_work, align 4
  %func41 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38, i32 0, i32 2
  %26 = ptrtoint ptr %func41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %func41, align 4
  %timer46 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38, i32 1
  tail call void @init_timer_key(ptr noundef %timer46, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @mv88e6xxx_ptp_setup.__key.5) #7
  br label %if.end

if.end:                                           ; preds = %do.body25, %entry.if.end_crit_edge
  %ptp_clock_info = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37
  %27 = ptrtoint ptr %ptp_clock_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ptp_clock_info, align 8
  %name = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 1
  %dev = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %33, %if.end.i ], [ %31, %if.end.dev_name.exit_crit_edge ]
  %call53 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef %retval.0.i)
  %n_ext_ts = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 8
  %34 = ptrtoint ptr %n_ext_ts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_ext_ts, align 4
  %n_ext_ts55 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 4
  %36 = ptrtoint ptr %n_ext_ts55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %n_ext_ts55, align 4
  %n_per_out = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 5
  %37 = ptrtoint ptr %n_per_out to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %n_per_out, align 8
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 8
  %num_gpio.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %39, i32 0, i32 7
  %40 = ptrtoint ptr %num_gpio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_gpio.i, align 4
  %n_pins = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 6
  %42 = ptrtoint ptr %n_pins to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %n_pins, align 4
  %pps = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 7
  %43 = ptrtoint ptr %pps to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp148 = icmp sgt i32 %41, 0
  br i1 %cmp148, label %dev_name.exit.for.body_crit_edge, label %dev_name.exit.for.end_crit_edge

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

dev_name.exit.for.body_crit_edge:                 ; preds = %dev_name.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dev_name.exit.for.body_crit_edge
  %i.0149 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %dev_name.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 39, i32 %i.0149
  %call64 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 64, ptr noundef nonnull @.str.8, i32 noundef %i.0149)
  %index = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 39, i32 %i.0149, i32 1
  %44 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.0149, ptr %index, align 4
  %func65 = getelementptr %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 39, i32 %i.0149, i32 2
  %45 = ptrtoint ptr %func65 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %func65, align 4
  %inc = add nuw nsw i32 %i.0149, 1
  %46 = ptrtoint ptr %n_pins to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n_pins, align 4
  %cmp = icmp slt i32 %inc, %47
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dev_name.exit.for.end_crit_edge
  %pin_config66 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 39
  %pin_config69 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 8
  %48 = ptrtoint ptr %pin_config69 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %pin_config66, ptr %pin_config69, align 4
  %max_adj = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 2
  %49 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1000000, ptr %max_adj, align 4
  %adjfine = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 9
  %50 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mv88e6xxx_ptp_adjfine, ptr %adjfine, align 8
  %adjtime = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 12
  %51 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mv88e6xxx_ptp_adjtime, ptr %adjtime, align 4
  %gettime64 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 13
  %52 = ptrtoint ptr %gettime64 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mv88e6xxx_ptp_gettime, ptr %gettime64, align 8
  %settime64 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 16
  %53 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @mv88e6xxx_ptp_settime, ptr %settime64, align 4
  %ptp_enable = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 1
  %54 = ptrtoint ptr %ptp_enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ptp_enable, align 4
  %enable = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 17
  %56 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %enable, align 8
  %ptp_verify = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 2
  %57 = ptrtoint ptr %ptp_verify to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ptp_verify, align 4
  %verify = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 18
  %59 = ptrtoint ptr %verify to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %verify, align 4
  %do_aux_work = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 37, i32 19
  %60 = ptrtoint ptr %do_aux_work to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @mv88e6xxx_hwtstamp_work, ptr %do_aux_work, align 8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call80 = tail call ptr @ptp_clock_register(ptr noundef %ptp_clock_info, ptr noundef %62) #7
  %ptp_clock = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 36
  %63 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call80, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %call80, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then83, label %if.end86

if.then83:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %call80 to i32
  br label %cleanup

if.end86:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %65 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %65, ptr noundef %overflow_work, i32 noundef 1600) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %if.then83
  %retval.0 = phi i32 [ %64, %if.then83 ], [ 0, %if.end86 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mv88e6xxx_ptp_clock_read(ptr noundef %cc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cc, i32 -1192
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ptp_ops = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %ptp_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i64 %7(ptr noundef %cc) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6xxx_ptp_overflow_check(ptr noundef %work) #0 align 64 {
entry:
  %tmp1.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock.i.i = getelementptr i8, ptr %work, i32 -1240
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i.i, i32 noundef 0) #7
  %tstamp_tc.i = getelementptr i8, ptr %work, i32 -40
  %call.i = tail call i64 @timecounter_read(ptr noundef %tstamp_tc.i) #7
  tail call void @mutex_unlock(ptr noundef %reg_lock.i.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1.i) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp1.i, i64 noundef %call.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 1600) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_ptp_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ptp, i32 -1360
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ptp_ops1 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %ptp_ops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptp_ops1, align 4
  %6 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %cc_mult = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 14
  %7 = ptrtoint ptr %cc_mult to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cc_mult, align 4
  %cc_mult_num = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 15
  %9 = ptrtoint ptr %cc_mult_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cc_mult_num, align 4
  %conv = zext i32 %10 to i64
  %conv2 = sext i32 %6 to i64
  %mul = mul nsw i64 %conv, %conv2
  %cc_mult_dem = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %5, i32 0, i32 16
  %11 = ptrtoint ptr %cc_mult_dem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cc_mult_dem, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !43

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %12
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %mul) #11, !srcloc !44
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  %extract.t20 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t20, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp = icmp slt i32 %scaled_ppm, 0
  %reg_lock.i = getelementptr i8, ptr %ptp, i32 -1344
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %tstamp_tc = getelementptr i8, ptr %ptp, i32 -144
  %call4 = tail call i64 @timecounter_read(ptr noundef %tstamp_tc) #7
  %14 = sub i32 0, %dividend.addr.0.i.i.off0
  %cond.p = select i1 %cmp, i32 %14, i32 %dividend.addr.0.i.i.off0
  %cond = add i32 %cond.p, %8
  %mult6 = getelementptr i8, ptr %ptp, i32 -152
  %15 = ptrtoint ptr %mult6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %mult6, align 8
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_ptp_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock.i = getelementptr i8, ptr %ptp, i32 -1344
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %nsec.i = getelementptr i8, ptr %ptp, i32 -128
  %0 = ptrtoint ptr %nsec.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %nsec.i, align 8
  %add.i = add i64 %1, %delta
  store i64 %add.i, ptr %nsec.i, align 8
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_ptp_gettime(ptr noundef %ptp, ptr nocapture noundef writeonly %ts) #0 align 64 {
entry:
  %tmp1 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_lock.i = getelementptr i8, ptr %ptp, i32 -1344
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %tstamp_tc = getelementptr i8, ptr %ptp, i32 -144
  %call = tail call i64 @timecounter_read(ptr noundef %tstamp_tc) #7
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp1) #7
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp1, i64 noundef %call) #7
  %0 = call ptr @memcpy(ptr %ts, ptr %tmp1, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_ptp_settime(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %1)
  %cmp.i = icmp sgt i64 %1, 9223372035
  br i1 %cmp.i, label %entry.timespec64_to_ns.exit_crit_edge, label %if.end.i

entry.timespec64_to_ns.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %1)
  %cmp2.i = icmp slt i64 %1, -9223372035
  br i1 %cmp2.i, label %if.end.i.timespec64_to_ns.exit_crit_edge, label %if.end4.i

if.end.i.timespec64_to_ns.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %timespec64_to_ns.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nsw i64 %1, 1000000000
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %2 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_nsec.i, align 8
  %conv.i = sext i32 %3 to i64
  %add.i = add i64 %mul.i, %conv.i
  br label %timespec64_to_ns.exit

timespec64_to_ns.exit:                            ; preds = %if.end4.i, %if.end.i.timespec64_to_ns.exit_crit_edge, %entry.timespec64_to_ns.exit_crit_edge
  %retval.0.i = phi i64 [ %add.i, %if.end4.i ], [ 9223372036854775807, %entry.timespec64_to_ns.exit_crit_edge ], [ -9223372036854775808, %if.end.i.timespec64_to_ns.exit_crit_edge ]
  %reg_lock.i = getelementptr i8, ptr %ptp, i32 -1344
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #7
  %tstamp_tc = getelementptr i8, ptr %ptp, i32 -144
  %tstamp_cc = getelementptr i8, ptr %ptp, i32 -168
  tail call void @timecounter_init(ptr noundef %tstamp_tc, ptr noundef %tstamp_cc, i64 noundef %retval.0.i) #7
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_hwtstamp_work(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_ptp_free(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 36
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %overflow_work = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 35
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %overflow_work) #7
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %ptp_ops = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %5, i32 0, i32 65
  %6 = ptrtoint ptr %ptp_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptp_ops, align 4
  %event_work = getelementptr inbounds %struct.mv88e6xxx_ptp_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %event_work to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event_work, align 4
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %tai_event_work = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 38
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %tai_event_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %10 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ptp_clock, align 4
  %call5 = tail call i32 @ptp_clock_unregister(ptr noundef %11) #7
  %12 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ptp_clock, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_find_pin(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_cyc2time(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_clock_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @timecounter_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @mv88e6165_ptp_ops, !1, !"mv88e6165_ptp_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 348, i32 32}
!2 = !{ptr @mv88e6250_ptp_ops, !3, !"mv88e6250_ptp_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 368, i32 32}
!4 = !{ptr @mv88e6352_ptp_ops, !5, !"mv88e6352_ptp_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 395, i32 32}
!6 = !{ptr @mv88e6xxx_ptp_setup.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 463, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mv88e6xxx_ptp_setup.__key.1, !7, !"__key", i1 false, i1 false}
!10 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mv88e6xxx_ptp_setup.__key.3, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 465, i32 3}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mv88e6xxx_ptp_setup.__key.5, !12, !"__key", i1 false, i1 false}
!15 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 469, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 479, i32 42}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 167, i32 3}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mv88e6352_tai_event_work._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mv88e6352_tai_event_work._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/mv88e6xxx/ptp.c", i32 171, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mv88e6352_tai_event_work._entry.14, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @mv88e6352_tai_event_work._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
!43 = !{!"branch_weights", i32 2000, i32 1}
!44 = !{i64 2148950814, i64 2148951094, i64 2148951428, i64 2148951762}
