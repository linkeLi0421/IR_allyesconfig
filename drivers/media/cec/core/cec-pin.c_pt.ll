; ModuleID = '/llk/IR_all_yes/drivers/media/cec/core/cec-pin.c_pt.bc'
source_filename = "../drivers/media/cec/core/cec-pin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cec_pin_changed\22, \22a\22\09"
module asm "\09.weak\09__crc_cec_pin_changed\09\09\09\09"
module asm "\09.long\09__crc_cec_pin_changed\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_pin_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_pin_changed\22\09\09\09\09\09"
module asm "__kstrtabns_cec_pin_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cec_pin_allocate_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_cec_pin_allocate_adapter\09\09\09\09"
module asm "\09.long\09__crc_cec_pin_allocate_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cec_pin_allocate_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22cec_pin_allocate_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_cec_pin_allocate_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cec_adap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cec_state = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cec_pin = type { ptr, ptr, ptr, %struct.wait_queue_head, %struct.hrtimer, i64, i32, i16, i8, i8, i8, i32, %struct.cec_msg, i32, i8, i32, i8, %struct.cec_msg, i32, i8, i32, i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, %struct.cec_msg, i8, i64, %struct.atomic_t, %struct.atomic_t, i32, i32, [128 x i64], [128 x i8], i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, [257 x i64], [257 x [8 x i8]] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.69 }
%union.anon.69 = type { [16 x i32] }
%struct.cec_pin_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__kstrtab_cec_pin_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_pin_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_pin_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_pin_changed to i32), ptr @__kstrtab_cec_pin_changed, ptr @__kstrtabns_cec_pin_changed }, section "___ksymtab_gpl+cec_pin_changed", align 4
@cec_pin_allocate_adapter.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pin->kthread_waitq\00", [44 x i8] zeroinitializer }, align 32
@cec_pin_adap_ops = internal constant { %struct.cec_adap_ops, [56 x i8] } { %struct.cec_adap_ops { ptr @cec_pin_adap_enable, ptr @cec_pin_adap_monitor_all_enable, ptr null, ptr @cec_pin_adap_log_addr, ptr @cec_pin_adap_transmit, ptr @cec_pin_adap_status, ptr @cec_pin_adap_free, ptr @cec_pin_error_inj_show, ptr @cec_pin_error_inj_parse_line, ptr @cec_pin_received }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_cec_pin_allocate_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_cec_pin_allocate_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_cec_pin_allocate_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cec_pin_allocate_adapter to i32), ptr @__kstrtab_cec_pin_allocate_adapter, ptr @__kstrtabns_cec_pin_allocate_adapter }, section "___ksymtab_gpl+cec_pin_allocate_adapter", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@states = internal constant { [38 x %struct.cec_state], [80 x i8] } { [38 x %struct.cec_state] [%struct.cec_state { ptr @.str.1, i32 0 }, %struct.cec_state { ptr @.str.2, i32 1000 }, %struct.cec_state { ptr @.str.3, i32 50 }, %struct.cec_state { ptr @.str.4, i32 1000 }, %struct.cec_state { ptr @.str.5, i32 3700 }, %struct.cec_state { ptr @.str.6, i32 800 }, %struct.cec_state { ptr @.str.7, i32 400 }, %struct.cec_state { ptr @.str.8, i32 1300 }, %struct.cec_state { ptr @.str.9, i32 0 }, %struct.cec_state { ptr @.str.10, i32 0 }, %struct.cec_state { ptr @.str.11, i32 1500 }, %struct.cec_state { ptr @.str.12, i32 900 }, %struct.cec_state { ptr @.str.13, i32 300 }, %struct.cec_state { ptr @.str.14, i32 1400 }, %struct.cec_state { ptr @.str.15, i32 600 }, %struct.cec_state { ptr @.str.16, i32 1800 }, %struct.cec_state { ptr @.str.17, i32 1200 }, %struct.cec_state { ptr @.str.18, i32 2300 }, %struct.cec_state { ptr @.str.19, i32 250 }, %struct.cec_state { ptr @.str.20, i32 1550 }, %struct.cec_state { ptr @.str.21, i32 950 }, %struct.cec_state { ptr @.str.22, i32 2050 }, %struct.cec_state { ptr @.str.23, i32 0 }, %struct.cec_state { ptr @.str.24, i32 0 }, %struct.cec_state { ptr @.str.25, i32 0 }, %struct.cec_state { ptr @.str.26, i32 0 }, %struct.cec_state { ptr @.str.27, i32 3600 }, %struct.cec_state { ptr @.str.28, i32 50 }, %struct.cec_state { ptr @.str.29, i32 50 }, %struct.cec_state { ptr @.str.30, i32 850 }, %struct.cec_state { ptr @.str.31, i32 900 }, %struct.cec_state { ptr @.str.32, i32 50 }, %struct.cec_state { ptr @.str.33, i32 1500 }, %struct.cec_state { ptr @.str.34, i32 250 }, %struct.cec_state { ptr @.str.35, i32 1750 }, %struct.cec_state { ptr @.str.36, i32 300 }, %struct.cec_state { ptr @.str.37, i32 3600 }, %struct.cec_state { ptr @.str.38, i32 0 }], [80 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Idle\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tx Wait\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Tx Wait for High\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Tx Start Bit Low\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx Start Bit High\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Tx Start Bit High Short\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tx Start Bit High Long\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Tx Start Bit Low Custom\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Tx Start Bit High Custom\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tx Data 0 Low\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx Data 0 High\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx Data 0 High Short\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tx Data 0 High Long\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tx Data 1 Low\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tx Data 1 High\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx Data 1 High Short\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tx Data 1 High Long\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Tx Data 1 High Pre Sample\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Tx Data 1 High Post Sample\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Tx Data 1 High Post Sample Short\00", [63 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Tx Data 1 High Post Sample Long\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tx Data Bit Low Custom\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Tx Data Bit High Custom\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tx Pulse Low Custom\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Tx Pulse High Custom\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Tx Low Drive\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Rx Start Bit Low\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Rx Start Bit High\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Rx Data Sample\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Rx Data Post Sample\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Rx Data Wait for Low\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Rx Ack Low\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Rx Ack Low Post\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Rx Ack High Post\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Rx Ack Finish\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Rx Low Drive\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Rx Irq\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cec-pin\00", [24 x i8] zeroinitializer }, align 32
@cec_pin_adap_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.42, i32 1140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cec-pin: kernel_thread() failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cec_pin_adap_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/media/cec/core/cec-pin.c\00", [63 x i8] zeroinitializer }, align 32
@cec_pin_adap_enable._entry_ptr = internal global ptr @cec_pin_adap_enable._entry, section ".printk_index", align 4
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state: %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx_bit: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rx_bit: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cec pin: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cec pin events dropped: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irq failed: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timer overruns > 100us: %u of %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timer overruns > 300us: %u of %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max timer overrun: %u usecs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"avg timer overrun: %u usecs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"rx start bit low too short: %u (delta %u, ts %llu)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rx start bit too short: %u (delta %u, ts %llu)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx start bit too long: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rx data bit too short: %u (delta %u, ts %llu)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx data bit too long: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rx initiated low drive: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx detected low drive: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [38 x i64] [i64 36, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36]
@__sancov_gen_cov_switch_values.60 = internal global [25 x i64] [i64 23, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 32, i64 8, i64 9, i64 22, i64 23, i64 24, i64 25]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1331, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"cec_pin_adap_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1306, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"states\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 70, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 71, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 72, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 73, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 74, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 75, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 76, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 77, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 78, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 79, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 80, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 81, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 82, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 83, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 84, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 85, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 86, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 87, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 88, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 89, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 90, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 91, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 92, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 93, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 94, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 95, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 96, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 97, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 98, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 99, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 100, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 101, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 102, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 103, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 104, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 105, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 106, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 107, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 108, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1137, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1140, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1207, i32 19 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1208, i32 19 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1209, i32 19 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1210, i32 19 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1211, i32 19 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1213, i32 19 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1215, i32 20 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1217, i32 20 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1219, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1221, i32 20 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1226, i32 7 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1232, i32 7 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1237, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1241, i32 7 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1246, i32 20 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1248, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [36 x i8] c"../drivers/media/cec/core/cec-pin.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 1249, i32 19 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__ksymtab_cec_pin_allocate_adapter, ptr @__ksymtab_cec_pin_changed, ptr @cec_pin_adap_enable._entry, ptr @cec_pin_adap_enable._entry_ptr, ptr @cec_pin_allocate_adapter.__key, ptr @.str, ptr @cec_pin_adap_ops, ptr @states, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_pin_allocate_adapter.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_pin_adap_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @states to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_pin_adap_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cec_pin_start_timer(ptr noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %1)
  %cmp.not = icmp eq i32 %1, 37
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work_irq_change = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_irq_change, i32 noundef 4) #9
  %2 = ptrtoint ptr %work_irq_change to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %work_irq_change, align 4
  %kthread_waitq = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %kthread_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cec_pin_changed(ptr nocapture noundef readonly %adap, i1 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  tail call fastcc void @cec_pin_update(ptr noundef %1, i1 noundef zeroext %value, i1 noundef zeroext false)
  br i1 %value, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %is_configuring = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 20
  %2 = ptrtoint ptr %is_configuring to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_configuring, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %is_configured = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 21
  %4 = ptrtoint ptr %is_configured to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_configured, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %monitor_all_cnt = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 25
  %6 = ptrtoint ptr %monitor_all_cnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %monitor_all_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %lor.lhs.false5.if.end_crit_edge, label %lor.lhs.false5.if.then_crit_edge

lor.lhs.false5.if.then_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false5.if.end_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false5.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %work_irq_change = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 35
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_irq_change, i32 noundef 4) #9
  %8 = ptrtoint ptr %work_irq_change to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %work_irq_change, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false5.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cec_pin_update(ptr noundef %pin, i1 noundef zeroext %v, i1 noundef zeroext %force) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %v to i8
  br i1 %force, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin, align 8
  %cec_pin_is_high = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %cec_pin_is_high to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_pin_is_high, align 1, !range !138
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp = icmp eq i8 %3, %frombool
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin, align 8
  %cec_pin_is_high8 = getelementptr inbounds %struct.cec_adapter, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %cec_pin_is_high8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %cec_pin_is_high8, align 1
  %work_pin_num_events = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  %7 = ptrtoint ptr %work_pin_num_events to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %work_pin_num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %8)
  %cmp10 = icmp slt i32 %8, 128
  %work_pin_events_dropped = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 41
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  %9 = ptrtoint ptr %work_pin_events_dropped to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %work_pin_events_dropped, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool15.not = icmp eq i8 %10, 0
  br i1 %tobool15.not, label %if.then12.if.end20_crit_edge, label %if.then16

if.then12.if.end20_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %work_pin_events_dropped to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %work_pin_events_dropped, align 8
  %or = or i8 %frombool, 2
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then12.if.end20_crit_edge
  %ev.0 = phi i8 [ %or, %if.then16 ], [ %frombool, %if.then12.if.end20_crit_edge ]
  %work_pin_events_wr = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 37
  %12 = ptrtoint ptr %work_pin_events_wr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %work_pin_events_wr, align 8
  %arrayidx = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 40, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %ev.0, ptr %arrayidx, align 1
  %call21 = tail call i64 @ktime_get() #9
  %15 = ptrtoint ptr %work_pin_events_wr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %work_pin_events_wr, align 8
  %arrayidx23 = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 39, i32 %16
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call21, ptr %arrayidx23, align 8
  %18 = load i32, ptr %work_pin_events_wr, align 8
  %add = add i32 %18, 1
  %rem = and i32 %add, 127
  store i32 %rem, ptr %work_pin_events_wr, align 8
  %call.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %work_pin_num_events, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %work_pin_num_events, ptr %work_pin_num_events, i32 1, ptr elementtype(i32) %work_pin_num_events) #9, !srcloc !139
  br label %if.end28

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %work_pin_events_dropped to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %work_pin_events_dropped, align 8
  %work_pin_events_dropped_cnt = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 42
  %21 = ptrtoint ptr %work_pin_events_dropped_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %work_pin_events_dropped_cnt, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %work_pin_events_dropped_cnt, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end20
  %kthread_waitq = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %kthread_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %return

return:                                           ; preds = %if.end28, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cec_pin_allocate_adapter(ptr noundef %pin_ops, ptr noundef %priv, ptr noundef %name, i32 noundef %caps) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 5752) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.cec_pin, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pin_ops, ptr %ops, align 4
  %timer = getelementptr inbounds %struct.cec_pin, ptr %call7.i.i, i32 0, i32 4
  tail call void @hrtimer_init(ptr noundef %timer, i32 noundef 1, i32 noundef 1) #9
  %function = getelementptr inbounds %struct.cec_pin, ptr %call7.i.i, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @cec_pin_timer, ptr %function, align 8
  %kthread_waitq = getelementptr inbounds %struct.cec_pin, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %kthread_waitq, ptr noundef nonnull @.str, ptr noundef nonnull @cec_pin_allocate_adapter.__key) #9
  %tx_custom_low_usecs = getelementptr inbounds %struct.cec_pin, ptr %call7.i.i, i32 0, i32 49
  %3 = ptrtoint ptr %tx_custom_low_usecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1000, ptr %tx_custom_low_usecs, align 4
  %tx_custom_high_usecs = getelementptr inbounds %struct.cec_pin, ptr %call7.i.i, i32 0, i32 50
  %4 = ptrtoint ptr %tx_custom_high_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1000, ptr %tx_custom_high_usecs, align 8
  %or3 = or i32 %caps, 160
  %call4 = tail call ptr @cec_allocate_adapter(ptr noundef nonnull @cec_pin_adap_ops, ptr noundef %priv, ptr noundef %name, i32 noundef %or3, i8 noundef zeroext 4) #9
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pin8 = getelementptr inbounds %struct.cec_adapter, ptr %call4, i32 0, i32 35
  %5 = ptrtoint ptr %pin8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %pin8, align 8
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call4, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %high.i = getelementptr inbounds %struct.cec_pin_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %high.i, align 4
  tail call void %10(ptr noundef %call4) #9
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %call.i.i = tail call i32 %14(ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp ne i32 %call.i.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool.i.i, i1 noundef zeroext false) #9
  tail call fastcc void @cec_pin_update(ptr noundef nonnull %call7.i.i, i1 noundef zeroext %tobool.i.i, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.then6 ], [ %call4, %if.end7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_pin_timer(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call i64 @ktime_get() #9
  %timer_ts = getelementptr i8, ptr %timer, i32 1528
  %2 = ptrtoint ptr %timer_ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %timer_ts, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %if.then

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then:                                          ; preds = %entry
  %sub.i = sub i64 %call, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #9
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #13, !srcloc !140
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !141
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %conv = trunc i64 %cond213.i.i.i to i32
  %timer_cnt = getelementptr i8, ptr %timer, i32 1536
  %7 = ptrtoint ptr %timer_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timer_cnt, align 8
  %inc = add i32 %8, 1
  store i32 %inc, ptr %timer_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %conv)
  %cmp = icmp sgt i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end20_crit_edge

if.then.if.end20_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then
  %state = getelementptr i8, ptr %timer, i32 68
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6.not = icmp eq i32 %10, 1
  br i1 %cmp6.not, label %land.lhs.true.if.end20_crit_edge, label %if.then8

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then8:                                         ; preds = %land.lhs.true
  %timer_sum_overrun = getelementptr i8, ptr %timer, i32 1552
  %11 = ptrtoint ptr %timer_sum_overrun to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %timer_sum_overrun, align 8
  %add = add i32 %12, %conv
  store i32 %add, ptr %timer_sum_overrun, align 8
  %timer_100us_overruns = getelementptr i8, ptr %timer, i32 1540
  %13 = ptrtoint ptr %timer_100us_overruns to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timer_100us_overruns, align 4
  %inc9 = add i32 %14, 1
  store i32 %inc9, ptr %timer_100us_overruns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %conv)
  %cmp10 = icmp ugt i32 %conv, 300
  br i1 %cmp10, label %if.then12, label %if.then8.if.end_crit_edge

if.then8.if.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %timer_300us_overruns = getelementptr i8, ptr %timer, i32 1544
  %15 = ptrtoint ptr %timer_300us_overruns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timer_300us_overruns, align 8
  %inc13 = add i32 %16, 1
  store i32 %inc13, ptr %timer_300us_overruns, align 8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then8.if.end_crit_edge
  %timer_max_overrun = getelementptr i8, ptr %timer, i32 1548
  %17 = ptrtoint ptr %timer_max_overrun to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %timer_max_overrun, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv)
  %cmp14 = icmp ult i32 %18, %conv
  br i1 %cmp14, label %if.then16, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %timer_max_overrun to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %timer_max_overrun, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end.if.end20_crit_edge, %land.lhs.true.if.end20_crit_edge, %if.then.if.end20_crit_edge, %entry.if.end20_crit_edge
  %monitor_pin_cnt = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 26
  %20 = ptrtoint ptr %monitor_pin_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %monitor_pin_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool21.not = icmp eq i32 %21, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr i8, ptr %timer, i32 -60
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 %25(ptr noundef %27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i, i1 noundef zeroext false) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %wait_usecs = getelementptr i8, ptr %timer, i32 56
  %28 = ptrtoint ptr %wait_usecs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wait_usecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %if.end61, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %29)
  %cmp28 = icmp ugt i32 %29, 150
  br i1 %cmp28, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %29, -100
  %30 = ptrtoint ptr %wait_usecs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub, ptr %wait_usecs, align 8
  %add.i = add i64 %call, 100000
  %31 = ptrtoint ptr %timer_ts to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %add.i, ptr %timer_ts, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %get_time.i, align 4
  %call.i269 = tail call i64 %35() #9
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i269, i64 noundef 100000) #9
  br label %cleanup

if.end36:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %29)
  %cmp38 = icmp ugt i32 %29, 100
  br i1 %cmp38, label %if.then40, label %if.end50

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %div268 = lshr i32 %29, 1
  %36 = ptrtoint ptr %wait_usecs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div268, ptr %wait_usecs, align 8
  %conv43 = zext i32 %div268 to i64
  %mul.i = mul nuw nsw i64 %conv43, 1000
  %add.i270 = add i64 %mul.i, %call
  %37 = ptrtoint ptr %timer_ts to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %add.i270, ptr %timer_ts, align 8
  %mul = mul nuw nsw i32 %div268, 1000
  %conv47 = zext i32 %mul to i64
  %base.i271 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %38 = ptrtoint ptr %base.i271 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i271, align 4
  %get_time.i272 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %get_time.i272 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get_time.i272, align 4
  %call.i273 = tail call i64 %41() #9
  %call1.i274 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i273, i64 noundef %conv47) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %conv52 = zext i32 %29 to i64
  %mul.i275 = mul nuw nsw i64 %conv52, 1000
  %add.i276 = add i64 %mul.i275, %call
  %42 = ptrtoint ptr %timer_ts to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %add.i276, ptr %timer_ts, align 8
  %mul56 = mul nuw nsw i32 %29, 1000
  %conv57 = zext i32 %mul56 to i64
  %base.i277 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %43 = ptrtoint ptr %base.i277 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i277, align 4
  %get_time.i278 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %get_time.i278 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_time.i278, align 4
  %call.i279 = tail call i64 %46() #9
  %call1.i280 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i279, i64 noundef %conv57) #9
  %47 = ptrtoint ptr %wait_usecs to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %wait_usecs, align 8
  br label %cleanup

if.end61:                                         ; preds = %if.end24
  %state62 = getelementptr i8, ptr %timer, i32 68
  %48 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %state62, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %if.end61.sw.epilog_crit_edge [
    i32 3, label %if.end61.sw.bb_crit_edge
    i32 4, label %if.end61.sw.bb_crit_edge374
    i32 5, label %if.end61.sw.bb_crit_edge375
    i32 6, label %if.end61.sw.bb_crit_edge376
    i32 7, label %if.end61.sw.bb_crit_edge377
    i32 8, label %if.end61.sw.bb_crit_edge378
    i32 9, label %if.end61.sw.bb_crit_edge379
    i32 10, label %if.end61.sw.bb_crit_edge380
    i32 11, label %if.end61.sw.bb_crit_edge381
    i32 12, label %if.end61.sw.bb_crit_edge382
    i32 13, label %if.end61.sw.bb_crit_edge383
    i32 14, label %if.end61.sw.bb_crit_edge384
    i32 15, label %if.end61.sw.bb_crit_edge385
    i32 16, label %if.end61.sw.bb_crit_edge386
    i32 17, label %if.end61.sw.bb_crit_edge387
    i32 18, label %if.end61.sw.bb_crit_edge388
    i32 19, label %if.end61.sw.bb_crit_edge389
    i32 20, label %if.end61.sw.bb_crit_edge390
    i32 21, label %if.end61.sw.bb_crit_edge391
    i32 22, label %if.end61.sw.bb_crit_edge392
    i32 23, label %if.end61.sw.bb_crit_edge393
    i32 24, label %if.end61.sw.bb_crit_edge394
    i32 25, label %if.end61.sw.bb_crit_edge395
    i32 36, label %if.end61.sw.bb140_crit_edge
    i32 26, label %if.end61.sw.bb140_crit_edge396
    i32 2, label %if.end61.sw.bb64_crit_edge
    i32 1, label %if.end61.sw.bb64_crit_edge397
    i32 27, label %sw.bb.i288
    i32 28, label %sw.bb21.i
    i32 29, label %sw.bb54.i
    i32 30, label %sw.bb80.i
    i32 31, label %sw.bb82.i
    i32 32, label %sw.bb161.i
    i32 33, label %if.end61.sw.bb164.i_crit_edge
    i32 34, label %if.end61.sw.bb164.i_crit_edge398
    i32 35, label %cec_pin_to_idle.exit389.i
  ]

if.end61.sw.bb164.i_crit_edge398:                 ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb164.i

if.end61.sw.bb164.i_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb164.i

if.end61.sw.bb64_crit_edge397:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end61.sw.bb64_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb64

if.end61.sw.bb140_crit_edge396:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb140

if.end61.sw.bb140_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb140

if.end61.sw.bb_crit_edge395:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge394:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge393:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge392:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge391:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge390:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge389:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge388:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge387:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge386:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge385:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge384:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge383:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge382:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge381:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge380:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge379:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge378:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge377:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge376:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge375:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge374:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.bb_crit_edge:                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end61.sw.bb_crit_edge, %if.end61.sw.bb_crit_edge374, %if.end61.sw.bb_crit_edge375, %if.end61.sw.bb_crit_edge376, %if.end61.sw.bb_crit_edge377, %if.end61.sw.bb_crit_edge378, %if.end61.sw.bb_crit_edge379, %if.end61.sw.bb_crit_edge380, %if.end61.sw.bb_crit_edge381, %if.end61.sw.bb_crit_edge382, %if.end61.sw.bb_crit_edge383, %if.end61.sw.bb_crit_edge384, %if.end61.sw.bb_crit_edge385, %if.end61.sw.bb_crit_edge386, %if.end61.sw.bb_crit_edge387, %if.end61.sw.bb_crit_edge388, %if.end61.sw.bb_crit_edge389, %if.end61.sw.bb_crit_edge390, %if.end61.sw.bb_crit_edge391, %if.end61.sw.bb_crit_edge392, %if.end61.sw.bb_crit_edge393, %if.end61.sw.bb_crit_edge394, %if.end61.sw.bb_crit_edge395
  %51 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %49, label %sw.bb.sw.epilogthread-pre-split_crit_edge [
    i32 3, label %sw.bb.i
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb13.i
    i32 19, label %sw.bb.sw.bb16.i_crit_edge
    i32 20, label %sw.bb.sw.bb16.i_crit_edge399
    i32 21, label %sw.bb.sw.bb16.i_crit_edge400
    i32 11, label %sw.bb.sw.bb22.i_crit_edge
    i32 12, label %sw.bb.sw.bb22.i_crit_edge401
    i32 13, label %sw.bb.sw.bb22.i_crit_edge402
    i32 15, label %sw.bb.sw.bb22.i_crit_edge403
    i32 16, label %sw.bb.sw.bb22.i_crit_edge404
    i32 17, label %sw.bb.sw.bb22.i_crit_edge405
    i32 23, label %sw.bb.sw.bb34.i_crit_edge
    i32 5, label %sw.bb.sw.bb48.i_crit_edge
    i32 6, label %sw.bb.sw.bb48.i_crit_edge406
    i32 7, label %sw.bb.sw.bb48.i_crit_edge407
    i32 9, label %sw.bb.sw.bb48.i_crit_edge408
    i32 10, label %sw.bb.sw.bb140.i_crit_edge
    i32 14, label %sw.bb.sw.bb140.i_crit_edge409
    i32 22, label %sw.bb189.i
    i32 18, label %sw.bb192.i
    i32 24, label %sw.bb283.i
    i32 25, label %cec_pin_to_idle.exit595.i
  ]

sw.bb.sw.bb140.i_crit_edge409:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb140.i

sw.bb.sw.bb140.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb140.i

sw.bb.sw.bb48.i_crit_edge408:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48.i

sw.bb.sw.bb48.i_crit_edge407:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48.i

sw.bb.sw.bb48.i_crit_edge406:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48.i

sw.bb.sw.bb48.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb48.i

sw.bb.sw.bb34.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

sw.bb.sw.bb22.i_crit_edge405:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

sw.bb.sw.bb22.i_crit_edge404:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

sw.bb.sw.bb22.i_crit_edge403:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

sw.bb.sw.bb22.i_crit_edge402:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

sw.bb.sw.bb22.i_crit_edge401:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

sw.bb.sw.bb22.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

sw.bb.sw.bb16.i_crit_edge400:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16.i

sw.bb.sw.bb16.i_crit_edge399:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16.i

sw.bb.sw.bb16.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb16.i

sw.bb.sw.epilogthread-pre-split_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb.i:                                          ; preds = %sw.bb
  %ops.i.i = getelementptr i8, ptr %timer, i32 -60
  %52 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ops.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 8
  %call.i.i281 = tail call i32 %55(ptr noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i281)
  %tobool.i.i = icmp ne i32 %call.i.i281, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i, i1 noundef zeroext false) #9
  br i1 %tobool.i.i, label %if.then.i, label %sw.bb.i.sw.epilogthread-pre-split_crit_edge

sw.bb.i.sw.epilogthread-pre-split_crit_edge:      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then.i:                                        ; preds = %sw.bb.i
  %tx_bit.i.i = getelementptr i8, ptr %timer, i32 128
  %58 = ptrtoint ptr %tx_bit.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %tx_bit.i.i, align 8
  %rx_bit.i.i = getelementptr i8, ptr %timer, i32 200
  %59 = ptrtoint ptr %rx_bit.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rx_bit.i.i, align 8
  %len.i.i = getelementptr i8, ptr %timer, i32 160
  %60 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %len.i.i, align 8
  %msg.i.i = getelementptr i8, ptr %timer, i32 176
  %61 = call ptr @memset(ptr %msg.i.i, i32 0, i32 16)
  %ts.i.i = getelementptr i8, ptr %timer, i32 48
  %62 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 0, ptr %ts.i.i, align 8
  %tx_generated_poll.i.i = getelementptr i8, ptr %timer, i32 1566
  %63 = ptrtoint ptr %tx_generated_poll.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %tx_generated_poll.i.i, align 2
  %tx_post_eom.i.i = getelementptr i8, ptr %timer, i32 1567
  %64 = ptrtoint ptr %tx_post_eom.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %tx_post_eom.i.i, align 1
  %65 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %state62, align 4
  %67 = add i32 %66, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %67)
  %68 = icmp ult i32 %67, 25
  br i1 %68, label %if.then.i.if.end18.sink.split.i.i_crit_edge, label %if.end.i.i

if.then.i.if.end18.sink.split.i.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %69 = add i32 %66, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %69)
  %70 = icmp ult i32 %69, 10
  br i1 %70, label %if.end.i.i.if.end18.sink.split.i.i_crit_edge, label %if.end.i.i.cec_pin_to_idle.exit.i_crit_edge

if.end.i.i.cec_pin_to_idle.exit.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit.i

if.end.i.i.if.end18.sink.split.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i.i

if.end18.sink.split.i.i:                          ; preds = %if.end.i.i.if.end18.sink.split.i.i_crit_edge, %if.then.i.if.end18.sink.split.i.i_crit_edge
  %.sink = phi i32 [ 140, %if.then.i.if.end18.sink.split.i.i_crit_edge ], [ 204, %if.end.i.i.if.end18.sink.split.i.i_crit_edge ]
  %rx_toggle.i.i = getelementptr i8, ptr %timer, i32 %.sink
  %71 = ptrtoint ptr %rx_toggle.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_toggle.i.i, align 4, !range !138
  %73 = xor i8 %72, 1
  store i8 %73, ptr %rx_toggle.i.i, align 4
  br label %cec_pin_to_idle.exit.i

cec_pin_to_idle.exit.i:                           ; preds = %if.end18.sink.split.i.i, %if.end.i.i.cec_pin_to_idle.exit.i_crit_edge
  %74 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.bb1.i:                                         ; preds = %sw.bb
  %call.i.i.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i.i = zext i16 %call.i.i.i to i32
  %arrayidx.i.i.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i.i
  %75 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx.i.i.i, align 8
  %77 = trunc i64 %76 to i32
  %78 = lshr i32 %77, 26
  %conv.i.i.i = and i32 %78, 3
  %79 = zext i32 %conv.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %conv.i.i.i, label %sw.bb1.i.if.else.i_crit_edge [
    i32 1, label %sw.bb.i.i.i
    i32 2, label %sw.bb1.i.if.end11.i_crit_edge
    i32 3, label %tx_short_start.exit.i
  ]

sw.bb1.i.if.end11.i_crit_edge:                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

sw.bb1.i.if.else.i_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

sw.bb.i.i.i:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i.i = and i64 %76, -201326593
  %80 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %and16.i.i.i, ptr %arrayidx.i.i.i, align 8
  br label %if.end11.i

tx_short_start.exit.i:                            ; preds = %sw.bb1.i
  %tx_toggle.i.i.i = getelementptr i8, ptr %timer, i32 140
  %81 = ptrtoint ptr %tx_toggle.i.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tx_toggle.i.i.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool19.i.i.not.i = icmp eq i8 %82, 0
  br i1 %tobool19.i.i.not.i, label %tx_short_start.exit.i.if.else.i_crit_edge, label %tx_short_start.exit.i.if.end11.i_crit_edge

tx_short_start.exit.i.if.end11.i_crit_edge:       ; preds = %tx_short_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

tx_short_start.exit.i.if.else.i_crit_edge:        ; preds = %tx_short_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %tx_short_start.exit.i.if.else.i_crit_edge, %sw.bb1.i.if.else.i_crit_edge
  %call.i.i434.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i435.i = zext i16 %call.i.i434.i to i32
  %arrayidx.i.i436.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i435.i
  %83 = ptrtoint ptr %arrayidx.i.i436.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx.i.i436.i, align 8
  %85 = trunc i64 %84 to i32
  %86 = lshr i32 %85, 28
  %conv.i.i437.i = and i32 %86, 3
  %87 = zext i32 %conv.i.i437.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %conv.i.i437.i, label %if.else.i.if.else8.i_crit_edge [
    i32 1, label %sw.bb.i.i439.i
    i32 2, label %if.else.i.if.end11.i_crit_edge
    i32 3, label %tx_long_start.exit.i
  ]

if.else.i.if.end11.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

if.else.i.if.else8.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i

sw.bb.i.i439.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i438.i = and i64 %84, -805306369
  %88 = ptrtoint ptr %arrayidx.i.i436.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %and16.i.i438.i, ptr %arrayidx.i.i436.i, align 8
  br label %if.end11.i

tx_long_start.exit.i:                             ; preds = %if.else.i
  %tx_toggle.i.i440.i = getelementptr i8, ptr %timer, i32 140
  %89 = ptrtoint ptr %tx_toggle.i.i440.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tx_toggle.i.i440.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool19.i.i441.not.i = icmp eq i8 %90, 0
  br i1 %tobool19.i.i441.not.i, label %tx_long_start.exit.i.if.else8.i_crit_edge, label %tx_long_start.exit.i.if.end11.i_crit_edge

tx_long_start.exit.i.if.end11.i_crit_edge:        ; preds = %tx_long_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i

tx_long_start.exit.i.if.else8.i_crit_edge:        ; preds = %tx_long_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else8.i

if.else8.i:                                       ; preds = %tx_long_start.exit.i.if.else8.i_crit_edge, %if.else.i.if.else8.i_crit_edge
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else8.i, %tx_long_start.exit.i.if.end11.i_crit_edge, %sw.bb.i.i439.i, %if.else.i.if.end11.i_crit_edge, %tx_short_start.exit.i.if.end11.i_crit_edge, %sw.bb.i.i.i, %sw.bb1.i.if.end11.i_crit_edge
  %.sink.i = phi i32 [ 5, %if.else8.i ], [ 6, %sw.bb1.i.if.end11.i_crit_edge ], [ 6, %sw.bb.i.i.i ], [ 6, %tx_short_start.exit.i.if.end11.i_crit_edge ], [ 7, %if.else.i.if.end11.i_crit_edge ], [ 7, %sw.bb.i.i439.i ], [ 7, %tx_long_start.exit.i.if.end11.i_crit_edge ]
  %91 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %.sink.i, ptr %state62, align 4
  %ops.i445.i = getelementptr i8, ptr %timer, i32 -60
  %92 = ptrtoint ptr %ops.i445.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ops.i445.i, align 4
  %high.i.i = getelementptr inbounds %struct.cec_pin_ops, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %high.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %high.i.i, align 4
  %96 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr, align 8
  tail call void %95(ptr noundef %97) #9
  %98 = ptrtoint ptr %ops.i445.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i445.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %99, align 4
  %102 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr, align 8
  %call.i.i446.i = tail call i32 %101(ptr noundef %103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i446.i)
  %tobool.i.i.i = icmp ne i32 %call.i.i446.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i.i, i1 noundef zeroext false) #9
  br label %sw.epilogthread-pre-split

sw.bb13.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 9, ptr %state62, align 4
  %ops.i447.i = getelementptr i8, ptr %timer, i32 -60
  %105 = ptrtoint ptr %ops.i447.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i447.i, align 4
  %high.i448.i = getelementptr inbounds %struct.cec_pin_ops, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %high.i448.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %high.i448.i, align 4
  %109 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr, align 8
  tail call void %108(ptr noundef %110) #9
  %111 = ptrtoint ptr %ops.i447.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i447.i, align 4
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %112, align 4
  %115 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr, align 8
  %call.i.i449.i = tail call i32 %114(ptr noundef %116) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i449.i)
  %tobool.i.i450.i = icmp ne i32 %call.i.i449.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i450.i, i1 noundef zeroext false) #9
  br label %sw.epilogthread-pre-split

sw.bb16.i:                                        ; preds = %sw.bb.sw.bb16.i_crit_edge, %sw.bb.sw.bb16.i_crit_edge399, %sw.bb.sw.bb16.i_crit_edge400
  %tx_nacked.i = getelementptr i8, ptr %timer, i32 132
  %117 = ptrtoint ptr %tx_nacked.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %tx_nacked.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool.not.i = icmp eq i8 %118, 0
  br i1 %tobool.not.i, label %sw.bb16.i.sw.bb22.i_crit_edge, label %if.end20.i

sw.bb16.i.sw.bb22.i_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb22.i

if.end20.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bit.i451.i = getelementptr i8, ptr %timer, i32 128
  %119 = ptrtoint ptr %tx_bit.i451.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %tx_bit.i451.i, align 8
  %rx_bit.i452.i = getelementptr i8, ptr %timer, i32 200
  %120 = ptrtoint ptr %rx_bit.i452.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %rx_bit.i452.i, align 8
  %len.i453.i = getelementptr i8, ptr %timer, i32 160
  %121 = ptrtoint ptr %len.i453.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %len.i453.i, align 8
  %msg.i454.i = getelementptr i8, ptr %timer, i32 176
  %122 = call ptr @memset(ptr %msg.i454.i, i32 0, i32 16)
  %ts.i455.i = getelementptr i8, ptr %timer, i32 48
  %123 = ptrtoint ptr %ts.i455.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 0, ptr %ts.i455.i, align 8
  %tx_generated_poll.i456.i = getelementptr i8, ptr %timer, i32 1566
  %124 = ptrtoint ptr %tx_generated_poll.i456.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %tx_generated_poll.i456.i, align 2
  %tx_post_eom.i457.i = getelementptr i8, ptr %timer, i32 1567
  %125 = ptrtoint ptr %tx_post_eom.i457.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %tx_post_eom.i457.i, align 1
  %tx_toggle.i459.i = getelementptr i8, ptr %timer, i32 140
  %126 = ptrtoint ptr %tx_toggle.i459.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tx_toggle.i459.i, align 4, !range !138
  %128 = xor i8 %127, 1
  store i8 %128, ptr %tx_toggle.i459.i, align 4
  %129 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1, ptr %state62, align 4
  %len.i = getelementptr i8, ptr %timer, i32 88
  %130 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %len.i, align 8
  %work_tx_ts.i = getelementptr i8, ptr %timer, i32 344
  %131 = ptrtoint ptr %work_tx_ts.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %call, ptr %work_tx_ts.i, align 8
  %work_tx_status.i = getelementptr i8, ptr %timer, i32 336
  %132 = ptrtoint ptr %work_tx_status.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 4, ptr %work_tx_status.i, align 8
  %kthread_waitq.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilogthread-pre-split

sw.bb22.i:                                        ; preds = %sw.bb16.i.sw.bb22.i_crit_edge, %sw.bb.sw.bb22.i_crit_edge, %sw.bb.sw.bb22.i_crit_edge401, %sw.bb.sw.bb22.i_crit_edge402, %sw.bb.sw.bb22.i_crit_edge403, %sw.bb.sw.bb22.i_crit_edge404, %sw.bb.sw.bb22.i_crit_edge405
  %ops.i467.i = getelementptr i8, ptr %timer, i32 -60
  %133 = ptrtoint ptr %ops.i467.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i467.i, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %137 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr, align 8
  %call.i468.i = tail call i32 %136(ptr noundef %138) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i468.i)
  %tobool.i469.i = icmp ne i32 %call.i468.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i469.i, i1 noundef zeroext false) #9
  br i1 %tobool.i469.i, label %sw.bb22.i.sw.bb34.i_crit_edge, label %land.lhs.true.i

sw.bb22.i.sw.bb34.i_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

land.lhs.true.i:                                  ; preds = %sw.bb22.i
  %tx_generated_poll24.i = getelementptr i8, ptr %timer, i32 1566
  %139 = ptrtoint ptr %tx_generated_poll24.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %tx_generated_poll24.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool25.not.i = icmp eq i8 %140, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %land.lhs.true.i.sw.bb34.i_crit_edge

land.lhs.true.i.sw.bb34.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34.i

if.then26.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %len28.i = getelementptr i8, ptr %timer, i32 88
  %141 = ptrtoint ptr %len28.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %len28.i, align 8
  %142 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 3, ptr %state62, align 4
  %work_tx_ts30.i = getelementptr i8, ptr %timer, i32 344
  %143 = ptrtoint ptr %work_tx_ts30.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %call, ptr %work_tx_ts30.i, align 8
  %work_tx_status31.i = getelementptr i8, ptr %timer, i32 336
  %144 = ptrtoint ptr %work_tx_status31.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 8, ptr %work_tx_status31.i, align 8
  %tx_low_drive_cnt.i = getelementptr i8, ptr %timer, i32 1572
  %145 = ptrtoint ptr %tx_low_drive_cnt.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tx_low_drive_cnt.i, align 4
  %inc.i = add i32 %146, 1
  store i32 %inc.i, ptr %tx_low_drive_cnt.i, align 4
  %kthread_waitq32.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq32.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilogthread-pre-split

sw.bb34.i:                                        ; preds = %land.lhs.true.i.sw.bb34.i_crit_edge, %sw.bb22.i.sw.bb34.i_crit_edge, %sw.bb.sw.bb34.i_crit_edge
  %call.i.i470.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i471.i = zext i16 %call.i.i470.i to i32
  %arrayidx.i.i472.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i471.i
  %147 = ptrtoint ptr %arrayidx.i.i472.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx.i.i472.i, align 8
  %arrayidx4.i.i.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 58, i32 %idxprom.i.i471.i, i32 6
  %149 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = zext i8 %150 to i32
  %tx_bit.i.i.i = getelementptr i8, ptr %timer, i32 128
  %151 = ptrtoint ptr %tx_bit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %tx_bit.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %conv6.i.i.i)
  %cmp7.not.i.i.i = icmp eq i32 %152, %conv6.i.i.i
  br i1 %cmp7.not.i.i.i, label %if.end11.i.i.i, label %sw.bb34.i.if.end46.i_crit_edge

sw.bb34.i.if.end46.i_crit_edge:                   ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.end11.i.i.i:                                   ; preds = %sw.bb34.i
  %shr.i.i.i = lshr i64 %148, 32
  %153 = trunc i64 %shr.i.i.i to i32
  %conv.i.i473.i = and i32 %153, 3
  %154 = zext i32 %conv.i.i473.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %conv.i.i473.i, label %if.end11.i.i.i.if.end46.i_crit_edge [
    i32 1, label %sw.bb.i.i475.i
    i32 2, label %if.end11.i.i.i.if.then36.i_crit_edge
    i32 3, label %tx_last_bit.exit.i
  ]

if.end11.i.i.i.if.then36.i_crit_edge:             ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.end11.i.i.i.if.end46.i_crit_edge:              ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

sw.bb.i.i475.i:                                   ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i474.i = and i64 %148, -12884901889
  %155 = ptrtoint ptr %arrayidx.i.i472.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %and16.i.i474.i, ptr %arrayidx.i.i472.i, align 8
  br label %if.then36.i

tx_last_bit.exit.i:                               ; preds = %if.end11.i.i.i
  %tx_toggle.i.i476.i = getelementptr i8, ptr %timer, i32 140
  %156 = ptrtoint ptr %tx_toggle.i.i476.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %tx_toggle.i.i476.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool19.i.i477.not.i = icmp eq i8 %157, 0
  br i1 %tobool19.i.i477.not.i, label %tx_last_bit.exit.i.if.end46.i_crit_edge, label %tx_last_bit.exit.i.if.then36.i_crit_edge

tx_last_bit.exit.i.if.then36.i_crit_edge:         ; preds = %tx_last_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

tx_last_bit.exit.i.if.end46.i_crit_edge:          ; preds = %tx_last_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46.i

if.then36.i:                                      ; preds = %tx_last_bit.exit.i.if.then36.i_crit_edge, %sw.bb.i.i475.i, %if.end11.i.i.i.if.then36.i_crit_edge
  %158 = ptrtoint ptr %tx_bit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %tx_bit.i.i.i, align 8
  %rx_bit.i482.i = getelementptr i8, ptr %timer, i32 200
  %159 = ptrtoint ptr %rx_bit.i482.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 0, ptr %rx_bit.i482.i, align 8
  %len.i483.i = getelementptr i8, ptr %timer, i32 160
  %160 = ptrtoint ptr %len.i483.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %len.i483.i, align 8
  %msg.i484.i = getelementptr i8, ptr %timer, i32 176
  %161 = call ptr @memset(ptr %msg.i484.i, i32 0, i32 16)
  %ts.i485.i = getelementptr i8, ptr %timer, i32 48
  %162 = ptrtoint ptr %ts.i485.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 0, ptr %ts.i485.i, align 8
  %tx_generated_poll.i486.i = getelementptr i8, ptr %timer, i32 1566
  %163 = ptrtoint ptr %tx_generated_poll.i486.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %tx_generated_poll.i486.i, align 2
  %tx_post_eom.i487.i = getelementptr i8, ptr %timer, i32 1567
  %164 = ptrtoint ptr %tx_post_eom.i487.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %tx_post_eom.i487.i, align 1
  %165 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %state62, align 4
  %167 = add i32 %166, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %167)
  %168 = icmp ult i32 %167, 25
  br i1 %168, label %if.then36.i.if.end18.sink.split.i495.i_crit_edge, label %if.end.i491.i

if.then36.i.if.end18.sink.split.i495.i_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i495.i

if.end.i491.i:                                    ; preds = %if.then36.i
  %169 = add i32 %166, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %169)
  %170 = icmp ult i32 %169, 10
  br i1 %170, label %if.end.i491.i.if.end18.sink.split.i495.i_crit_edge, label %if.end.i491.i.if.end42.i_crit_edge

if.end.i491.i.if.end42.i_crit_edge:               ; preds = %if.end.i491.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

if.end.i491.i.if.end18.sink.split.i495.i_crit_edge: ; preds = %if.end.i491.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i495.i

if.end18.sink.split.i495.i:                       ; preds = %if.end.i491.i.if.end18.sink.split.i495.i_crit_edge, %if.then36.i.if.end18.sink.split.i495.i_crit_edge
  %.sink367 = phi i32 [ 140, %if.then36.i.if.end18.sink.split.i495.i_crit_edge ], [ 204, %if.end.i491.i.if.end18.sink.split.i495.i_crit_edge ]
  %rx_toggle.i492.i = getelementptr i8, ptr %timer, i32 %.sink367
  %171 = ptrtoint ptr %rx_toggle.i492.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %rx_toggle.i492.i, align 4, !range !138
  %173 = xor i8 %172, 1
  store i8 %173, ptr %rx_toggle.i492.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.end18.sink.split.i495.i, %if.end.i491.i.if.end42.i_crit_edge
  %174 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %state62, align 4
  %len38.i = getelementptr i8, ptr %timer, i32 88
  %175 = ptrtoint ptr %len38.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %len38.i, align 8
  %work_tx_ts43.i = getelementptr i8, ptr %timer, i32 344
  %176 = ptrtoint ptr %work_tx_ts43.i to i32
  call void @__asan_store8_noabort(i32 %176)
  store i64 %call, ptr %work_tx_ts43.i, align 8
  %work_tx_status44.i = getelementptr i8, ptr %timer, i32 336
  %177 = ptrtoint ptr %work_tx_status44.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 1, ptr %work_tx_status44.i, align 8
  %kthread_waitq45.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq45.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilogthread-pre-split

if.end46.i:                                       ; preds = %tx_last_bit.exit.i.if.end46.i_crit_edge, %if.end11.i.i.i.if.end46.i_crit_edge, %sw.bb34.i.if.end46.i_crit_edge
  %inc47.i = add i32 %152, 1
  %178 = ptrtoint ptr %tx_bit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %inc47.i, ptr %tx_bit.i.i.i, align 8
  br label %sw.bb48.i

sw.bb48.i:                                        ; preds = %if.end46.i, %sw.bb.sw.bb48.i_crit_edge, %sw.bb.sw.bb48.i_crit_edge406, %sw.bb.sw.bb48.i_crit_edge407, %sw.bb.sw.bb48.i_crit_edge408
  %call.i.i497.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i498.i = zext i16 %call.i.i497.i to i32
  %arrayidx.i.i499.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i498.i
  %179 = ptrtoint ptr %arrayidx.i.i499.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx.i.i499.i, align 8
  %arrayidx4.i.i500.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 58, i32 %idxprom.i.i498.i, i32 7
  %181 = ptrtoint ptr %arrayidx4.i.i500.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx4.i.i500.i, align 1
  %conv6.i.i501.i = zext i8 %182 to i32
  %tx_bit.i.i502.i = getelementptr i8, ptr %timer, i32 128
  %183 = ptrtoint ptr %tx_bit.i.i502.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tx_bit.i.i502.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %184, i32 %conv6.i.i501.i)
  %cmp7.not.i.i503.i = icmp eq i32 %184, %conv6.i.i501.i
  br i1 %cmp7.not.i.i503.i, label %if.end11.i.i506.i, label %sw.bb48.i.if.end63.i_crit_edge

sw.bb48.i.if.end63.i_crit_edge:                   ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.end11.i.i506.i:                                ; preds = %sw.bb48.i
  %shr.i.i504.i = lshr i64 %180, 38
  %185 = trunc i64 %shr.i.i504.i to i32
  %conv.i.i505.i = and i32 %185, 3
  %186 = zext i32 %conv.i.i505.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %conv.i.i505.i, label %if.end11.i.i506.i.if.end63.i_crit_edge [
    i32 1, label %sw.bb.i.i508.i
    i32 2, label %if.end11.i.i506.i.if.then50.i_crit_edge
    i32 3, label %tx_low_drive.exit.i
  ]

if.end11.i.i506.i.if.then50.i_crit_edge:          ; preds = %if.end11.i.i506.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

if.end11.i.i506.i.if.end63.i_crit_edge:           ; preds = %if.end11.i.i506.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

sw.bb.i.i508.i:                                   ; preds = %if.end11.i.i506.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i507.i = and i64 %180, -824633720833
  %187 = ptrtoint ptr %arrayidx.i.i499.i to i32
  call void @__asan_store8_noabort(i32 %187)
  store i64 %and16.i.i507.i, ptr %arrayidx.i.i499.i, align 8
  br label %if.then50.i

tx_low_drive.exit.i:                              ; preds = %if.end11.i.i506.i
  %tx_toggle.i.i509.i = getelementptr i8, ptr %timer, i32 140
  %188 = ptrtoint ptr %tx_toggle.i.i509.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %tx_toggle.i.i509.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool19.i.i510.not.i = icmp eq i8 %189, 0
  br i1 %tobool19.i.i510.not.i, label %tx_low_drive.exit.i.if.end63.i_crit_edge, label %tx_low_drive.exit.i.if.then50.i_crit_edge

tx_low_drive.exit.i.if.then50.i_crit_edge:        ; preds = %tx_low_drive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then50.i

tx_low_drive.exit.i.if.end63.i_crit_edge:         ; preds = %tx_low_drive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then50.i:                                      ; preds = %tx_low_drive.exit.i.if.then50.i_crit_edge, %sw.bb.i.i508.i, %if.end11.i.i506.i.if.then50.i_crit_edge
  %ops.i514.i = getelementptr i8, ptr %timer, i32 -60
  %190 = ptrtoint ptr %ops.i514.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %ops.i514.i, align 4
  %low.i.i = getelementptr inbounds %struct.cec_pin_ops, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %low.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %low.i.i, align 4
  %194 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr, align 8
  tail call void %193(ptr noundef %195) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %196 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 26, ptr %state62, align 4
  %len53.i = getelementptr i8, ptr %timer, i32 88
  %197 = ptrtoint ptr %len53.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 0, ptr %len53.i, align 8
  %tx_generated_poll54.i = getelementptr i8, ptr %timer, i32 1566
  %198 = ptrtoint ptr %tx_generated_poll54.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %tx_generated_poll54.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool55.not.i = icmp eq i8 %199, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.then50.i.sw.epilogthread-pre-split_crit_edge

if.then50.i.sw.epilogthread-pre-split_crit_edge:  ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end57.i:                                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #11
  %work_tx_ts58.i = getelementptr i8, ptr %timer, i32 344
  %200 = ptrtoint ptr %work_tx_ts58.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %call, ptr %work_tx_ts58.i, align 8
  %work_tx_status59.i = getelementptr i8, ptr %timer, i32 336
  %201 = ptrtoint ptr %work_tx_status59.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 8, ptr %work_tx_status59.i, align 8
  %tx_low_drive_cnt60.i = getelementptr i8, ptr %timer, i32 1572
  %202 = ptrtoint ptr %tx_low_drive_cnt60.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %tx_low_drive_cnt60.i, align 4
  %inc61.i = add i32 %203, 1
  store i32 %inc61.i, ptr %tx_low_drive_cnt60.i, align 4
  %kthread_waitq62.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq62.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilogthread-pre-split

if.end63.i:                                       ; preds = %tx_low_drive.exit.i.if.end63.i_crit_edge, %if.end11.i.i506.i.if.end63.i_crit_edge, %sw.bb48.i.if.end63.i_crit_edge
  %.frozen = freeze i32 %184
  %div.i = udiv i32 %.frozen, 10
  %len66.i = getelementptr i8, ptr %timer, i32 88
  %204 = ptrtoint ptr %len66.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %len66.i, align 8
  %tx_extra_bytes.i = getelementptr i8, ptr %timer, i32 1568
  %206 = ptrtoint ptr %tx_extra_bytes.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %tx_extra_bytes.i, align 8
  %conv.i = zext i8 %207 to i32
  %add.i282 = add i32 %205, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %add.i282)
  %cmp.not.i = icmp ult i32 %div.i, %add.i282
  br i1 %cmp.not.i, label %if.end78.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end63.i
  %208 = ptrtoint ptr %tx_bit.i.i502.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %tx_bit.i.i502.i, align 8
  %rx_bit.i516.i = getelementptr i8, ptr %timer, i32 200
  %209 = ptrtoint ptr %rx_bit.i516.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %rx_bit.i516.i, align 8
  %len.i517.i = getelementptr i8, ptr %timer, i32 160
  %210 = ptrtoint ptr %len.i517.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %len.i517.i, align 8
  %msg.i518.i = getelementptr i8, ptr %timer, i32 176
  %211 = call ptr @memset(ptr %msg.i518.i, i32 0, i32 16)
  %ts.i519.i = getelementptr i8, ptr %timer, i32 48
  %212 = ptrtoint ptr %ts.i519.i to i32
  call void @__asan_store8_noabort(i32 %212)
  store i64 0, ptr %ts.i519.i, align 8
  %tx_generated_poll.i520.i = getelementptr i8, ptr %timer, i32 1566
  %213 = ptrtoint ptr %tx_generated_poll.i520.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 0, ptr %tx_generated_poll.i520.i, align 2
  %tx_post_eom.i521.i = getelementptr i8, ptr %timer, i32 1567
  %214 = ptrtoint ptr %tx_post_eom.i521.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %tx_post_eom.i521.i, align 1
  %215 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %state62, align 4
  %217 = add i32 %216, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %217)
  %218 = icmp ult i32 %217, 25
  br i1 %218, label %if.then68.i.if.end18.sink.split.i529.i_crit_edge, label %if.end.i525.i

if.then68.i.if.end18.sink.split.i529.i_crit_edge: ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i529.i

if.end.i525.i:                                    ; preds = %if.then68.i
  %219 = add i32 %216, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %219)
  %220 = icmp ult i32 %219, 10
  br i1 %220, label %if.end.i525.i.if.end18.sink.split.i529.i_crit_edge, label %if.end.i525.i.if.end74.i_crit_edge

if.end.i525.i.if.end74.i_crit_edge:               ; preds = %if.end.i525.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74.i

if.end.i525.i.if.end18.sink.split.i529.i_crit_edge: ; preds = %if.end.i525.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i529.i

if.end18.sink.split.i529.i:                       ; preds = %if.end.i525.i.if.end18.sink.split.i529.i_crit_edge, %if.then68.i.if.end18.sink.split.i529.i_crit_edge
  %.sink368 = phi i32 [ 140, %if.then68.i.if.end18.sink.split.i529.i_crit_edge ], [ 204, %if.end.i525.i.if.end18.sink.split.i529.i_crit_edge ]
  %rx_toggle.i526.i = getelementptr i8, ptr %timer, i32 %.sink368
  %221 = ptrtoint ptr %rx_toggle.i526.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %rx_toggle.i526.i, align 4, !range !138
  %223 = xor i8 %222, 1
  store i8 %223, ptr %rx_toggle.i526.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end18.sink.split.i529.i, %if.end.i525.i.if.end74.i_crit_edge
  %224 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 1, ptr %state62, align 4
  %225 = ptrtoint ptr %len66.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %len66.i, align 8
  %work_tx_ts75.i = getelementptr i8, ptr %timer, i32 344
  %226 = ptrtoint ptr %work_tx_ts75.i to i32
  call void @__asan_store8_noabort(i32 %226)
  store i64 %call, ptr %work_tx_ts75.i, align 8
  %work_tx_status76.i = getelementptr i8, ptr %timer, i32 336
  %227 = ptrtoint ptr %work_tx_status76.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 1, ptr %work_tx_status76.i, align 8
  %kthread_waitq77.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq77.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %sw.epilogthread-pre-split

if.end78.i:                                       ; preds = %if.end63.i
  %228 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %.frozen, %228
  %229 = zext i32 %rem.i.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %229, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %rem.i.decomposed, label %sw.default.i [
    i32 8, label %sw.bb97.i
    i32 9, label %if.end78.i.sw.epilog.i_crit_edge
  ]

if.end78.i.sw.epilog.i_crit_edge:                 ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end78.i
  %conv82.i = trunc i32 %div.i to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %205)
  %cmp85.i = icmp ult i32 %div.i, %205
  br i1 %cmp85.i, label %if.then87.i, label %sw.default.i.if.end89.i_crit_edge

sw.default.i.if.end89.i_crit_edge:                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.then87.i:                                      ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 12, i32 6, i32 %div.i
  %230 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %arrayidx.i, align 1
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then87.i, %sw.default.i.if.end89.i_crit_edge
  %val.0.i = phi i8 [ %231, %if.then87.i ], [ %conv82.i, %sw.default.i.if.end89.i_crit_edge ]
  %conv90.i = zext i8 %val.0.i to i32
  %sub.i283 = sub nuw nsw i32 7, %rem.i.decomposed
  %shl.i = shl nuw nsw i32 1, %sub.i283
  %and.i = and i32 %shl.i, %conv90.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool93.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool93.not.i, i32 10, i32 14
  br label %sw.epilog.i

sw.bb97.i:                                        ; preds = %if.end78.i
  %tx_post_eom.i = getelementptr i8, ptr %timer, i32 1567
  %232 = ptrtoint ptr %tx_post_eom.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %tx_post_eom.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool105.not.i = icmp eq i8 %233, 0
  %sub106.i = add i32 %add.i282, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %sub106.i)
  %cmp107.i = icmp eq i32 %div.i, %sub106.i
  %234 = select i1 %tobool105.not.i, i1 %cmp107.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i282)
  %cmp110.i = icmp ugt i32 %add.i282, 1
  %sub113.i = add i32 %add.i282, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %sub113.i)
  %cmp114.i = icmp eq i32 %div.i, %sub113.i
  %or.cond.i = select i1 %cmp110.i, i1 %cmp114.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true116.i, label %sw.bb97.i.if.else121.i_crit_edge

sw.bb97.i.if.else121.i_crit_edge:                 ; preds = %sw.bb97.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else121.i

land.lhs.true116.i:                               ; preds = %sw.bb97.i
  %call117.i = tail call fastcc zeroext i1 @tx_early_eom(ptr noundef %add.ptr) #9
  br i1 %call117.i, label %if.end129.thread.i, label %land.lhs.true116.i.if.else121.i_crit_edge

land.lhs.true116.i.if.else121.i_crit_edge:        ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else121.i

if.end129.thread.i:                               ; preds = %land.lhs.true116.i
  call void @__sanitizer_cov_trace_pc() #11
  %235 = ptrtoint ptr %tx_post_eom.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %tx_post_eom.i, align 1
  br label %236

if.else121.i:                                     ; preds = %land.lhs.true116.i.if.else121.i_crit_edge, %sw.bb97.i.if.else121.i_crit_edge
  br i1 %234, label %if.end129.i, label %if.else121.i.sw.epilog.i_crit_edge

if.else121.i.sw.epilog.i_crit_edge:               ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

if.end129.i:                                      ; preds = %if.else121.i
  %call125.i = tail call fastcc zeroext i1 @tx_no_eom(ptr noundef %add.ptr) #9
  br i1 %call125.i, label %if.end129.i.sw.epilog.i_crit_edge, label %if.end129.i._crit_edge

if.end129.i._crit_edge:                           ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %236

if.end129.i.sw.epilog.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

236:                                              ; preds = %if.end129.i._crit_edge, %if.end129.thread.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %236, %if.end129.i.sw.epilog.i_crit_edge, %if.else121.i.sw.epilog.i_crit_edge, %if.end89.i, %if.end78.i.sw.epilog.i_crit_edge
  %.sink621.i = phi i32 [ %cond.i, %if.end89.i ], [ 14, %236 ], [ 10, %if.end129.i.sw.epilog.i_crit_edge ], [ 10, %if.else121.i.sw.epilog.i_crit_edge ], [ 14, %if.end78.i.sw.epilog.i_crit_edge ]
  %237 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %.sink621.i, ptr %state62, align 4
  %call.i.i531.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i532.i = zext i16 %call.i.i531.i to i32
  %arrayidx.i.i533.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i532.i
  %238 = ptrtoint ptr %arrayidx.i.i533.i to i32
  call void @__asan_load8_noabort(i32 %238)
  %239 = load i64, ptr %arrayidx.i.i533.i, align 8
  %arrayidx4.i.i534.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 58, i32 %idxprom.i.i532.i, i32 5
  %240 = ptrtoint ptr %arrayidx4.i.i534.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %arrayidx4.i.i534.i, align 1
  %conv6.i.i535.i = zext i8 %241 to i32
  %242 = ptrtoint ptr %tx_bit.i.i502.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %tx_bit.i.i502.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %243, i32 %conv6.i.i535.i)
  %cmp7.not.i.i537.i = icmp eq i32 %243, %conv6.i.i535.i
  br i1 %cmp7.not.i.i537.i, label %if.end11.i.i539.i, label %sw.epilog.i.if.end139.i_crit_edge

sw.epilog.i.if.end139.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139.i

if.end11.i.i539.i:                                ; preds = %sw.epilog.i
  %244 = trunc i64 %239 to i32
  %245 = lshr i32 %244, 24
  %conv.i.i538.i = and i32 %245, 3
  %246 = zext i32 %conv.i.i538.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %246, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %conv.i.i538.i, label %if.end11.i.i539.i.if.end139.i_crit_edge [
    i32 1, label %sw.bb.i.i541.i
    i32 2, label %if.end11.i.i539.i.if.then137.i_crit_edge
    i32 3, label %tx_custom_bit.exit.i
  ]

if.end11.i.i539.i.if.then137.i_crit_edge:         ; preds = %if.end11.i.i539.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137.i

if.end11.i.i539.i.if.end139.i_crit_edge:          ; preds = %if.end11.i.i539.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139.i

sw.bb.i.i541.i:                                   ; preds = %if.end11.i.i539.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i540.i = and i64 %239, -50331649
  %247 = ptrtoint ptr %arrayidx.i.i533.i to i32
  call void @__asan_store8_noabort(i32 %247)
  store i64 %and16.i.i540.i, ptr %arrayidx.i.i533.i, align 8
  br label %if.then137.i

tx_custom_bit.exit.i:                             ; preds = %if.end11.i.i539.i
  %tx_toggle.i.i542.i = getelementptr i8, ptr %timer, i32 140
  %248 = ptrtoint ptr %tx_toggle.i.i542.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %tx_toggle.i.i542.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %tobool19.i.i543.not.i = icmp eq i8 %249, 0
  br i1 %tobool19.i.i543.not.i, label %tx_custom_bit.exit.i.if.end139.i_crit_edge, label %tx_custom_bit.exit.i.if.then137.i_crit_edge

tx_custom_bit.exit.i.if.then137.i_crit_edge:      ; preds = %tx_custom_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then137.i

tx_custom_bit.exit.i.if.end139.i_crit_edge:       ; preds = %tx_custom_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end139.i

if.then137.i:                                     ; preds = %tx_custom_bit.exit.i.if.then137.i_crit_edge, %sw.bb.i.i541.i, %if.end11.i.i539.i.if.then137.i_crit_edge
  %250 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 22, ptr %state62, align 4
  br label %if.end139.i

if.end139.i:                                      ; preds = %if.then137.i, %tx_custom_bit.exit.i.if.end139.i_crit_edge, %if.end11.i.i539.i.if.end139.i_crit_edge, %sw.epilog.i.if.end139.i_crit_edge
  %ops.i547.i = getelementptr i8, ptr %timer, i32 -60
  %251 = ptrtoint ptr %ops.i547.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ops.i547.i, align 4
  %low.i548.i = getelementptr inbounds %struct.cec_pin_ops, ptr %252, i32 0, i32 1
  %253 = ptrtoint ptr %low.i548.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %low.i548.i, align 4
  %255 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %add.ptr, align 8
  tail call void %254(ptr noundef %256) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilogthread-pre-split

sw.bb140.i:                                       ; preds = %sw.bb.sw.bb140.i_crit_edge, %sw.bb.sw.bb140.i_crit_edge409
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %49)
  %cmp142.i = icmp eq i32 %49, 14
  %tx_bit145.i = getelementptr i8, ptr %timer, i32 128
  %257 = ptrtoint ptr %tx_bit145.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tx_bit145.i, align 8
  %rem146.i = urem i32 %258, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %rem146.i)
  %cmp147.i = icmp eq i32 %rem146.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %258)
  %cmp154.i = icmp ult i32 %258, 4
  %brmerge.i = or i1 %cmp154.i, %cmp147.i
  %or.cond432.i = select i1 %cmp142.i, i1 %brmerge.i, i1 false
  br i1 %or.cond432.i, label %sw.bb140.i.if.end187.i_crit_edge, label %if.else160.i

sw.bb140.i.if.end187.i_crit_edge:                 ; preds = %sw.bb140.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.i

if.else160.i:                                     ; preds = %sw.bb140.i
  br i1 %cmp147.i, label %if.else160.i.if.else180.i_crit_edge, label %land.lhs.true162.i

if.else160.i.if.else180.i_crit_edge:              ; preds = %if.else160.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else180.i

land.lhs.true162.i:                               ; preds = %if.else160.i
  %call.i.i549.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i550.i = zext i16 %call.i.i549.i to i32
  %arrayidx.i.i551.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i550.i
  %259 = ptrtoint ptr %arrayidx.i.i551.i to i32
  call void @__asan_load8_noabort(i32 %259)
  %260 = load i64, ptr %arrayidx.i.i551.i, align 8
  %arrayidx4.i.i552.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 58, i32 %idxprom.i.i550.i, i32 3
  %261 = ptrtoint ptr %arrayidx4.i.i552.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %arrayidx4.i.i552.i, align 1
  %conv6.i.i553.i = zext i8 %262 to i32
  %263 = ptrtoint ptr %tx_bit145.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %tx_bit145.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %264, i32 %conv6.i.i553.i)
  %cmp7.not.i.i555.i = icmp eq i32 %264, %conv6.i.i553.i
  br i1 %cmp7.not.i.i555.i, label %if.end11.i.i557.i, label %land.lhs.true162.i.land.lhs.true172.critedge.i_crit_edge

land.lhs.true162.i.land.lhs.true172.critedge.i_crit_edge: ; preds = %land.lhs.true162.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true172.critedge.i

if.end11.i.i557.i:                                ; preds = %land.lhs.true162.i
  %265 = trunc i64 %260 to i32
  %266 = lshr i32 %265, 20
  %conv.i.i556.i = and i32 %266, 3
  %267 = zext i32 %conv.i.i556.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %267, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %conv.i.i556.i, label %if.end11.i.i557.i.land.lhs.true172.critedge.i_crit_edge [
    i32 1, label %sw.bb.i.i559.i
    i32 2, label %if.end11.i.i557.i.if.then165.i_crit_edge
    i32 3, label %tx_short_bit.exit.i
  ]

if.end11.i.i557.i.if.then165.i_crit_edge:         ; preds = %if.end11.i.i557.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then165.i

if.end11.i.i557.i.land.lhs.true172.critedge.i_crit_edge: ; preds = %if.end11.i.i557.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true172.critedge.i

sw.bb.i.i559.i:                                   ; preds = %if.end11.i.i557.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i558.i = and i64 %260, -3145729
  %268 = ptrtoint ptr %arrayidx.i.i551.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %and16.i.i558.i, ptr %arrayidx.i.i551.i, align 8
  br label %if.then165.i

tx_short_bit.exit.i:                              ; preds = %if.end11.i.i557.i
  %tx_toggle.i.i560.i = getelementptr i8, ptr %timer, i32 140
  %269 = ptrtoint ptr %tx_toggle.i.i560.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %tx_toggle.i.i560.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %tobool19.i.i561.not.i = icmp eq i8 %270, 0
  br i1 %tobool19.i.i561.not.i, label %tx_short_bit.exit.i.land.lhs.true172.critedge.i_crit_edge, label %tx_short_bit.exit.i.if.then165.i_crit_edge

tx_short_bit.exit.i.if.then165.i_crit_edge:       ; preds = %tx_short_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then165.i

tx_short_bit.exit.i.land.lhs.true172.critedge.i_crit_edge: ; preds = %tx_short_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true172.critedge.i

if.then165.i:                                     ; preds = %tx_short_bit.exit.i.if.then165.i_crit_edge, %sw.bb.i.i559.i, %if.end11.i.i557.i.if.then165.i_crit_edge
  %cond168.i = select i1 %cmp142.i, i32 16, i32 12
  br label %if.end187.i

land.lhs.true172.critedge.i:                      ; preds = %tx_short_bit.exit.i.land.lhs.true172.critedge.i_crit_edge, %if.end11.i.i557.i.land.lhs.true172.critedge.i_crit_edge, %land.lhs.true162.i.land.lhs.true172.critedge.i_crit_edge
  %call173.i = tail call fastcc zeroext i1 @tx_long_bit(ptr noundef %add.ptr) #9
  br i1 %call173.i, label %if.then175.i, label %land.lhs.true172.critedge.i.if.else180.i_crit_edge

land.lhs.true172.critedge.i.if.else180.i_crit_edge: ; preds = %land.lhs.true172.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else180.i

if.then175.i:                                     ; preds = %land.lhs.true172.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %cond178.i = select i1 %cmp142.i, i32 17, i32 13
  br label %if.end187.i

if.else180.i:                                     ; preds = %land.lhs.true172.critedge.i.if.else180.i_crit_edge, %if.else160.i.if.else180.i_crit_edge
  %cond183.i = select i1 %cmp142.i, i32 15, i32 11
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.else180.i, %if.then175.i, %if.then165.i, %sw.bb140.i.if.end187.i_crit_edge
  %cond168.sink.i = phi i32 [ %cond168.i, %if.then165.i ], [ %cond183.i, %if.else180.i ], [ %cond178.i, %if.then175.i ], [ 18, %sw.bb140.i.if.end187.i_crit_edge ]
  %271 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %cond168.sink.i, ptr %state62, align 4
  %ops.i565.i = getelementptr i8, ptr %timer, i32 -60
  %272 = ptrtoint ptr %ops.i565.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %ops.i565.i, align 4
  %high.i566.i = getelementptr inbounds %struct.cec_pin_ops, ptr %273, i32 0, i32 2
  %274 = ptrtoint ptr %high.i566.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %high.i566.i, align 4
  %276 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %add.ptr, align 8
  tail call void %275(ptr noundef %277) #9
  %278 = ptrtoint ptr %ops.i565.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ops.i565.i, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %279, align 4
  %282 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %add.ptr, align 8
  %call.i.i567.i = tail call i32 %281(ptr noundef %283) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i567.i)
  %tobool.i.i568.i = icmp ne i32 %call.i.i567.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i568.i, i1 noundef zeroext false) #9
  br label %sw.epilogthread-pre-split

sw.bb189.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %284 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 23, ptr %state62, align 4
  %ops.i569.i = getelementptr i8, ptr %timer, i32 -60
  %285 = ptrtoint ptr %ops.i569.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %ops.i569.i, align 4
  %high.i570.i = getelementptr inbounds %struct.cec_pin_ops, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %high.i570.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %high.i570.i, align 4
  %289 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %add.ptr, align 8
  tail call void %288(ptr noundef %290) #9
  %291 = ptrtoint ptr %ops.i569.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %ops.i569.i, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 4
  %295 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %add.ptr, align 8
  %call.i.i571.i = tail call i32 %294(ptr noundef %296) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i571.i)
  %tobool.i.i572.i = icmp ne i32 %call.i.i571.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i572.i, i1 noundef zeroext false) #9
  br label %sw.epilogthread-pre-split

sw.bb192.i:                                       ; preds = %sw.bb
  %ops.i573.i = getelementptr i8, ptr %timer, i32 -60
  %297 = ptrtoint ptr %ops.i573.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %ops.i573.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  %301 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %add.ptr, align 8
  %call.i574.i = tail call i32 %300(ptr noundef %302) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574.i)
  %tobool.i575.i = icmp ne i32 %call.i574.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i575.i, i1 noundef zeroext false) #9
  %tx_bit195.i = getelementptr i8, ptr %timer, i32 128
  %303 = ptrtoint ptr %tx_bit195.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %tx_bit195.i, align 8
  %.frozen372 = freeze i32 %304
  %div271.i = udiv i32 %.frozen372, 10
  %305 = mul i32 %div271.i, 10
  %rem196.i.decomposed = sub i32 %.frozen372, %305
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %rem196.i.decomposed)
  %cmp197.i = icmp eq i32 %rem196.i.decomposed, 9
  %brmerge429.i = select i1 %tobool.i575.i, i1 true, i1 %cmp197.i
  br i1 %brmerge429.i, label %sw.bb192.i.if.end237.i_crit_edge, label %land.lhs.true203.i

sw.bb192.i.if.end237.i_crit_edge:                 ; preds = %sw.bb192.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237.i

land.lhs.true203.i:                               ; preds = %sw.bb192.i
  %tx_generated_poll204.i = getelementptr i8, ptr %timer, i32 1566
  %306 = ptrtoint ptr %tx_generated_poll204.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %tx_generated_poll204.i, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %307)
  %tobool205.not.i = icmp eq i8 %307, 0
  br i1 %tobool205.not.i, label %if.then206.i, label %land.lhs.true203.i.if.end237.i_crit_edge

land.lhs.true203.i.if.end237.i_crit_edge:         ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237.i

if.then206.i:                                     ; preds = %land.lhs.true203.i
  call void @__sanitizer_cov_trace_pc() #11
  %len208.i = getelementptr i8, ptr %timer, i32 88
  %308 = ptrtoint ptr %len208.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 0, ptr %len208.i, align 8
  %work_tx_ts209.i = getelementptr i8, ptr %timer, i32 344
  %309 = ptrtoint ptr %work_tx_ts209.i to i32
  call void @__asan_store8_noabort(i32 %309)
  store i64 %call, ptr %work_tx_ts209.i, align 8
  %work_tx_status210.i = getelementptr i8, ptr %timer, i32 336
  %310 = ptrtoint ptr %work_tx_status210.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 2, ptr %work_tx_status210.i, align 8
  %kthread_waitq211.i = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq211.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %311 = ptrtoint ptr %tx_bit195.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %tx_bit195.i, align 8
  %rx_bit.i = getelementptr i8, ptr %timer, i32 200
  store i32 0, ptr %tx_bit195.i, align 8
  %msg214.i = getelementptr i8, ptr %timer, i32 176
  %313 = call ptr @memset(ptr %msg214.i, i32 0, i32 16)
  %msg216.i = getelementptr i8, ptr %timer, i32 104
  %314 = ptrtoint ptr %msg216.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %msg216.i, align 8
  %sub222.i = sub i32 8, %312
  %shl223.i = shl i32 255, %sub222.i
  %316 = trunc i32 %shl223.i to i8
  %conv229.i = and i8 %315, %316
  %317 = ptrtoint ptr %msg214.i to i32
  call void @__asan_store1_noabort(i32 %317)
  store i8 %conv229.i, ptr %msg214.i, align 8
  %len231.i = getelementptr i8, ptr %timer, i32 160
  %318 = ptrtoint ptr %len231.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 0, ptr %len231.i, align 8
  %sub.i.i = add i64 %call, -850000
  %ts233.i = getelementptr i8, ptr %timer, i32 48
  %319 = ptrtoint ptr %ts233.i to i32
  call void @__asan_store8_noabort(i32 %319)
  store i64 %sub.i.i, ptr %ts233.i, align 8
  %320 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 30, ptr %state62, align 4
  %inc236.i = add i32 %312, 1
  %321 = ptrtoint ptr %rx_bit.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 %inc236.i, ptr %rx_bit.i, align 8
  br label %sw.epilogthread-pre-split

if.end237.i:                                      ; preds = %land.lhs.true203.i.if.end237.i_crit_edge, %sw.bb192.i.if.end237.i_crit_edge
  %322 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 19, ptr %state62, align 4
  br i1 %cmp197.i, label %if.end256.critedge.i, label %land.lhs.true240.i

land.lhs.true240.i:                               ; preds = %if.end237.i
  %call241.i = tail call fastcc zeroext i1 @tx_short_bit(ptr noundef %add.ptr) #9
  br i1 %call241.i, label %if.then243.i, label %land.lhs.true247.critedge.i

if.then243.i:                                     ; preds = %land.lhs.true240.i
  call void @__sanitizer_cov_trace_pc() #11
  %323 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 20, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

land.lhs.true247.critedge.i:                      ; preds = %land.lhs.true240.i
  %call248.i = tail call fastcc zeroext i1 @tx_long_bit(ptr noundef %add.ptr) #9
  br i1 %call248.i, label %if.then250.i, label %land.lhs.true247.critedge.i.sw.epilogthread-pre-split_crit_edge

land.lhs.true247.critedge.i.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true247.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then250.i:                                     ; preds = %land.lhs.true247.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  %324 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %324)
  store i32 21, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end256.critedge.i:                             ; preds = %if.end237.i
  %msg1.i.i = getelementptr i8, ptr %timer, i32 104
  %325 = ptrtoint ptr %msg1.i.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %msg1.i.i, align 8
  %327 = and i8 %326, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %327)
  %cmp.i.not.i = icmp ne i8 %327, 15
  %spec.select433.i = xor i1 %tobool.i575.i, %cmp.i.not.i
  br i1 %spec.select433.i, label %if.end256.critedge.i.sw.epilogthread-pre-split_crit_edge, label %land.lhs.true267.i

if.end256.critedge.i.sw.epilogthread-pre-split_crit_edge: ; preds = %if.end256.critedge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

land.lhs.true267.i:                               ; preds = %if.end256.critedge.i
  %tx_ignore_nack_until_eom.i = getelementptr i8, ptr %timer, i32 1564
  %328 = ptrtoint ptr %tx_ignore_nack_until_eom.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %tx_ignore_nack_until_eom.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %tobool268.not.i = icmp eq i8 %329, 0
  br i1 %tobool268.not.i, label %land.lhs.true267.i.land.lhs.true277.i_crit_edge, label %lor.lhs.false269.i

land.lhs.true267.i.land.lhs.true277.i_crit_edge:  ; preds = %land.lhs.true267.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true277.i

lor.lhs.false269.i:                               ; preds = %land.lhs.true267.i
  %len273.i = getelementptr i8, ptr %timer, i32 88
  %330 = ptrtoint ptr %len273.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %len273.i, align 8
  %sub274.i = add i32 %331, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div271.i, i32 %sub274.i)
  %cmp275.i = icmp eq i32 %div271.i, %sub274.i
  br i1 %cmp275.i, label %lor.lhs.false269.i.land.lhs.true277.i_crit_edge, label %lor.lhs.false269.i.sw.epilogthread-pre-split_crit_edge

lor.lhs.false269.i.sw.epilogthread-pre-split_crit_edge: ; preds = %lor.lhs.false269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

lor.lhs.false269.i.land.lhs.true277.i_crit_edge:  ; preds = %lor.lhs.false269.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true277.i

land.lhs.true277.i:                               ; preds = %lor.lhs.false269.i.land.lhs.true277.i_crit_edge, %land.lhs.true267.i.land.lhs.true277.i_crit_edge
  %tx_post_eom278.i = getelementptr i8, ptr %timer, i32 1567
  %332 = ptrtoint ptr %tx_post_eom278.i to i32
  call void @__asan_load1_noabort(i32 %332)
  %333 = load i8, ptr %tx_post_eom278.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %333)
  %tobool279.not.i = icmp eq i8 %333, 0
  br i1 %tobool279.not.i, label %if.then280.i, label %land.lhs.true277.i.sw.epilogthread-pre-split_crit_edge

land.lhs.true277.i.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then280.i:                                     ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_nacked281.i = getelementptr i8, ptr %timer, i32 132
  %334 = ptrtoint ptr %tx_nacked281.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 1, ptr %tx_nacked281.i, align 4
  br label %sw.epilogthread-pre-split

sw.bb283.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i576.i = getelementptr i8, ptr %timer, i32 -60
  %335 = ptrtoint ptr %ops.i576.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ops.i576.i, align 4
  %high.i577.i = getelementptr inbounds %struct.cec_pin_ops, ptr %336, i32 0, i32 2
  %337 = ptrtoint ptr %high.i577.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %high.i577.i, align 4
  %339 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %add.ptr, align 8
  tail call void %338(ptr noundef %340) #9
  %341 = ptrtoint ptr %ops.i576.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %ops.i576.i, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %342, align 4
  %345 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %add.ptr, align 8
  %call.i.i578.i = tail call i32 %344(ptr noundef %346) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i578.i)
  %tobool.i.i579.i = icmp ne i32 %call.i.i578.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i579.i, i1 noundef zeroext false) #9
  %347 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 25, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

cec_pin_to_idle.exit595.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bit.i580.i = getelementptr i8, ptr %timer, i32 128
  %348 = ptrtoint ptr %tx_bit.i580.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 0, ptr %tx_bit.i580.i, align 8
  %rx_bit.i581.i = getelementptr i8, ptr %timer, i32 200
  %349 = ptrtoint ptr %rx_bit.i581.i to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 0, ptr %rx_bit.i581.i, align 8
  %len.i582.i = getelementptr i8, ptr %timer, i32 160
  %350 = ptrtoint ptr %len.i582.i to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 0, ptr %len.i582.i, align 8
  %msg.i583.i = getelementptr i8, ptr %timer, i32 176
  %351 = call ptr @memset(ptr %msg.i583.i, i32 0, i32 16)
  %ts.i584.i = getelementptr i8, ptr %timer, i32 48
  %352 = ptrtoint ptr %ts.i584.i to i32
  call void @__asan_store8_noabort(i32 %352)
  store i64 0, ptr %ts.i584.i, align 8
  %tx_generated_poll.i585.i = getelementptr i8, ptr %timer, i32 1566
  %353 = ptrtoint ptr %tx_generated_poll.i585.i to i32
  call void @__asan_store1_noabort(i32 %353)
  store i8 0, ptr %tx_generated_poll.i585.i, align 2
  %tx_post_eom.i586.i = getelementptr i8, ptr %timer, i32 1567
  %354 = ptrtoint ptr %tx_post_eom.i586.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 0, ptr %tx_post_eom.i586.i, align 1
  %tx_toggle.i588.i = getelementptr i8, ptr %timer, i32 140
  %355 = ptrtoint ptr %tx_toggle.i588.i to i32
  call void @__asan_load1_noabort(i32 %355)
  %356 = load i8, ptr %tx_toggle.i588.i, align 4, !range !138
  %357 = xor i8 %356, 1
  store i8 %357, ptr %tx_toggle.i588.i, align 4
  %358 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.bb.i288:                                       ; preds = %if.end61
  %ops.i.i285 = getelementptr i8, ptr %timer, i32 -60
  %359 = ptrtoint ptr %ops.i.i285 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %ops.i.i285, align 4
  %361 = ptrtoint ptr %360 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %360, align 4
  %363 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %add.ptr, align 8
  %call.i.i286 = tail call i32 %362(ptr noundef %364) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i286)
  %tobool.i.i287 = icmp ne i32 %call.i.i286, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i287, i1 noundef zeroext false) #9
  br i1 %tobool.i.i287, label %if.end.i, label %sw.bb.i288.sw.epilogthread-pre-split_crit_edge

sw.bb.i288.sw.epilogthread-pre-split_crit_edge:   ; preds = %sw.bb.i288
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end.i:                                         ; preds = %sw.bb.i288
  %365 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 28, ptr %state62, align 4
  %ts2.i = getelementptr i8, ptr %timer, i32 48
  %366 = ptrtoint ptr %ts2.i to i32
  call void @__asan_load8_noabort(i32 %366)
  %367 = load i64, ptr %ts2.i, align 8
  %sub.i.i289 = sub i64 %call, %367
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i289)
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i289, 0
  %368 = tail call i64 @llvm.abs.i64(i64 %sub.i.i289, i1 false) #9
  %369 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %368, i32 0) #13, !srcloc !140
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %369, 0
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %369, 1
  %370 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %368, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #13, !srcloc !141
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %370, 0
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i
  %cond213.i.i.i.i = select i1 %cmp8.i.i.i.i, i64 %sub210.i.i.i.i, i64 %div1811.i.i.i.i
  %conv.i290 = trunc i64 %cond213.i.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %conv.i290)
  %cmp.i = icmp slt i32 %conv.i290, 2500
  br i1 %cmp.i, label %if.then5.i, label %if.end11.i300

if.then5.i:                                       ; preds = %if.end.i
  %rx_start_bit_low_too_short_cnt.i = getelementptr i8, ptr %timer, i32 208
  %371 = ptrtoint ptr %rx_start_bit_low_too_short_cnt.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %rx_start_bit_low_too_short_cnt.i, align 8
  %inc.i291 = add i32 %372, 1
  store i32 %inc.i291, ptr %rx_start_bit_low_too_short_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %tobool6.not.i = icmp eq i32 %372, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then5.i.cec_pin_to_idle.exit.i299_crit_edge

if.then5.i.cec_pin_to_idle.exit.i299_crit_edge:   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit.i299

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_start_bit_low_too_short_ts.i = getelementptr i8, ptr %timer, i32 216
  %373 = ptrtoint ptr %rx_start_bit_low_too_short_ts.i to i32
  call void @__asan_store8_noabort(i32 %373)
  store i64 %367, ptr %rx_start_bit_low_too_short_ts.i, align 8
  %rx_start_bit_low_too_short_delta.i = getelementptr i8, ptr %timer, i32 224
  %374 = ptrtoint ptr %rx_start_bit_low_too_short_delta.i to i32
  call void @__asan_store4_noabort(i32 %374)
  store i32 %conv.i290, ptr %rx_start_bit_low_too_short_delta.i, align 8
  br label %cec_pin_to_idle.exit.i299

cec_pin_to_idle.exit.i299:                        ; preds = %if.then7.i, %if.then5.i.cec_pin_to_idle.exit.i299_crit_edge
  %tx_bit.i.i292 = getelementptr i8, ptr %timer, i32 128
  %375 = ptrtoint ptr %tx_bit.i.i292 to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 0, ptr %tx_bit.i.i292, align 8
  %rx_bit.i.i293 = getelementptr i8, ptr %timer, i32 200
  %376 = ptrtoint ptr %rx_bit.i.i293 to i32
  call void @__asan_store4_noabort(i32 %376)
  store i32 0, ptr %rx_bit.i.i293, align 8
  %len.i.i294 = getelementptr i8, ptr %timer, i32 160
  %377 = ptrtoint ptr %len.i.i294 to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 0, ptr %len.i.i294, align 8
  %msg.i.i295 = getelementptr i8, ptr %timer, i32 176
  %378 = call ptr @memset(ptr %msg.i.i295, i32 0, i32 16)
  %379 = ptrtoint ptr %ts2.i to i32
  call void @__asan_store8_noabort(i32 %379)
  store i64 0, ptr %ts2.i, align 8
  %tx_generated_poll.i.i296 = getelementptr i8, ptr %timer, i32 1566
  %380 = ptrtoint ptr %tx_generated_poll.i.i296 to i32
  call void @__asan_store1_noabort(i32 %380)
  store i8 0, ptr %tx_generated_poll.i.i296, align 2
  %tx_post_eom.i.i297 = getelementptr i8, ptr %timer, i32 1567
  %381 = ptrtoint ptr %tx_post_eom.i.i297 to i32
  call void @__asan_store1_noabort(i32 %381)
  store i8 0, ptr %tx_post_eom.i.i297, align 1
  %rx_toggle.i.i298 = getelementptr i8, ptr %timer, i32 204
  %382 = ptrtoint ptr %rx_toggle.i.i298 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %rx_toggle.i.i298, align 4, !range !138
  %384 = xor i8 %383, 1
  store i8 %384, ptr %rx_toggle.i.i298, align 4
  %385 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %385)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end11.i300:                                    ; preds = %if.end.i
  %len.i292.i = getelementptr i8, ptr %timer, i32 88
  %386 = ptrtoint ptr %len.i292.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %len.i292.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %387)
  %cmp.i.i = icmp eq i32 %387, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end11.i300.sw.epilogthread-pre-split_crit_edge

if.end11.i300.sw.epilogthread-pre-split_crit_edge: ; preds = %if.end11.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

land.rhs.i.i:                                     ; preds = %if.end11.i300
  %call.i.i.i301 = tail call zeroext i16 @cec_pin_rx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i.i302 = zext i16 %call.i.i.i301 to i32
  %arrayidx.i.i.i303 = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i.i302
  %388 = ptrtoint ptr %arrayidx.i.i.i303 to i32
  call void @__asan_load8_noabort(i32 %388)
  %389 = load i64, ptr %arrayidx.i.i.i303, align 8
  %390 = trunc i64 %389 to i32
  %391 = lshr i32 %390, 8
  %conv.i.i.i304 = and i32 %391, 3
  %arrayidx4.i.i.i305 = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 58, i32 %idxprom.i.i.i302, i32 1
  %392 = ptrtoint ptr %arrayidx4.i.i.i305 to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx4.i.i.i305, align 1
  %394 = zext i32 %conv.i.i.i304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %394, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %conv.i.i.i304, label %land.rhs.i.i.sw.epilogthread-pre-split_crit_edge [
    i32 1, label %sw.bb.i.i.i307
    i32 2, label %land.rhs.i.i.if.then13.i_crit_edge
    i32 3, label %rx_arb_lost.exit.i
  ]

land.rhs.i.i.if.then13.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

land.rhs.i.i.sw.epilogthread-pre-split_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

sw.bb.i.i.i307:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i.i306 = and i64 %389, -769
  %395 = ptrtoint ptr %arrayidx.i.i.i303 to i32
  call void @__asan_store8_noabort(i32 %395)
  store i64 %and16.i.i.i306, ptr %arrayidx.i.i.i303, align 8
  br label %if.then13.i

rx_arb_lost.exit.i:                               ; preds = %land.rhs.i.i
  %rx_toggle.i.i.i = getelementptr i8, ptr %timer, i32 204
  %396 = ptrtoint ptr %rx_toggle.i.i.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %rx_toggle.i.i.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %397)
  %tobool19.i.i.not.i308 = icmp eq i8 %397, 0
  br i1 %tobool19.i.i.not.i308, label %rx_arb_lost.exit.i.sw.epilogthread-pre-split_crit_edge, label %rx_arb_lost.exit.i.if.then13.i_crit_edge

rx_arb_lost.exit.i.if.then13.i_crit_edge:         ; preds = %rx_arb_lost.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

rx_arb_lost.exit.i.sw.epilogthread-pre-split_crit_edge: ; preds = %rx_arb_lost.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then13.i:                                      ; preds = %rx_arb_lost.exit.i.if.then13.i_crit_edge, %sw.bb.i.i.i307, %land.rhs.i.i.if.then13.i_crit_edge
  %tx_msg.i = getelementptr i8, ptr %timer, i32 72
  %398 = call ptr @memset(ptr %tx_msg.i, i32 0, i32 56)
  %msg3.i.i = getelementptr i8, ptr %timer, i32 104
  %399 = ptrtoint ptr %msg3.i.i to i32
  call void @__asan_store1_noabort(i32 %399)
  store i8 %393, ptr %msg3.i.i, align 8
  %400 = ptrtoint ptr %len.i292.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 1, ptr %len.i292.i, align 8
  %tx_generated_poll.i = getelementptr i8, ptr %timer, i32 1566
  %401 = ptrtoint ptr %tx_generated_poll.i to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 1, ptr %tx_generated_poll.i, align 2
  %tx_extra_bytes.i309 = getelementptr i8, ptr %timer, i32 1568
  %402 = ptrtoint ptr %tx_extra_bytes.i309 to i32
  call void @__asan_store1_noabort(i32 %402)
  store i8 0, ptr %tx_extra_bytes.i309, align 8
  %403 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %403)
  store i32 5, ptr %state62, align 4
  %404 = ptrtoint ptr %ts2.i to i32
  call void @__asan_store8_noabort(i32 %404)
  store i64 %call, ptr %ts2.i, align 8
  br label %sw.epilogthread-pre-split

sw.bb21.i:                                        ; preds = %if.end61
  %ops.i294.i = getelementptr i8, ptr %timer, i32 -60
  %405 = ptrtoint ptr %ops.i294.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %ops.i294.i, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %406, align 4
  %409 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %add.ptr, align 8
  %call.i295.i = tail call i32 %408(ptr noundef %410) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i295.i)
  %tobool.i296.i = icmp ne i32 %call.i295.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i296.i, i1 noundef zeroext false) #9
  %ts24.i = getelementptr i8, ptr %timer, i32 48
  %411 = ptrtoint ptr %ts24.i to i32
  call void @__asan_load8_noabort(i32 %411)
  %412 = load i64, ptr %ts24.i, align 8
  %sub.i297.i = sub i64 %call, %412
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i297.i)
  %cmp8.i.i.i298.i = icmp slt i64 %sub.i297.i, 0
  %413 = tail call i64 @llvm.abs.i64(i64 %sub.i297.i, i1 false) #9
  %414 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %413, i32 0) #13, !srcloc !140
  %asmresult.i.i.i.i299.i = extractvalue { i64, i32 } %414, 0
  %asmresult4.i.i.i.i300.i = extractvalue { i64, i32 } %414, 1
  %415 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %413, i64 %asmresult.i.i.i.i299.i, i32 %asmresult4.i.i.i.i300.i) #13, !srcloc !141
  %asmresult10.i.i.i.i301.i = extractvalue { i64, i32 } %415, 0
  %div1811.i.i.i302.i = lshr i64 %asmresult10.i.i.i.i301.i, 9
  %sub210.i.i.i303.i = sub nsw i64 0, %div1811.i.i.i302.i
  %cond213.i.i.i304.i = select i1 %cmp8.i.i.i298.i, i64 %sub210.i.i.i303.i, i64 %div1811.i.i.i302.i
  %conv26.i = trunc i64 %cond213.i.i.i304.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %conv26.i)
  %cmp29.i = icmp sgt i32 %conv26.i, 5000
  %or.cond.i310 = select i1 %tobool.i296.i, i1 %cmp29.i, i1 false
  br i1 %or.cond.i310, label %if.then31.i, label %if.end33.i

if.then31.i:                                      ; preds = %sw.bb21.i
  %rx_start_bit_too_long_cnt.i = getelementptr i8, ptr %timer, i32 244
  %416 = ptrtoint ptr %rx_start_bit_too_long_cnt.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %rx_start_bit_too_long_cnt.i, align 4
  %inc32.i = add i32 %417, 1
  store i32 %inc32.i, ptr %rx_start_bit_too_long_cnt.i, align 4
  %tx_bit.i305.i = getelementptr i8, ptr %timer, i32 128
  %418 = ptrtoint ptr %tx_bit.i305.i to i32
  call void @__asan_store4_noabort(i32 %418)
  store i32 0, ptr %tx_bit.i305.i, align 8
  %rx_bit.i306.i = getelementptr i8, ptr %timer, i32 200
  %419 = ptrtoint ptr %rx_bit.i306.i to i32
  call void @__asan_store4_noabort(i32 %419)
  store i32 0, ptr %rx_bit.i306.i, align 8
  %len.i307.i = getelementptr i8, ptr %timer, i32 160
  %420 = ptrtoint ptr %len.i307.i to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 0, ptr %len.i307.i, align 8
  %msg.i308.i = getelementptr i8, ptr %timer, i32 176
  %421 = call ptr @memset(ptr %msg.i308.i, i32 0, i32 16)
  %422 = ptrtoint ptr %ts24.i to i32
  call void @__asan_store8_noabort(i32 %422)
  store i64 0, ptr %ts24.i, align 8
  %tx_generated_poll.i310.i = getelementptr i8, ptr %timer, i32 1566
  %423 = ptrtoint ptr %tx_generated_poll.i310.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 0, ptr %tx_generated_poll.i310.i, align 2
  %tx_post_eom.i311.i = getelementptr i8, ptr %timer, i32 1567
  %424 = ptrtoint ptr %tx_post_eom.i311.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 0, ptr %tx_post_eom.i311.i, align 1
  %425 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %state62, align 4
  %427 = add i32 %426, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %427)
  %428 = icmp ult i32 %427, 25
  br i1 %428, label %if.then31.i.if.end18.sink.split.i319.i_crit_edge, label %if.end.i315.i

if.then31.i.if.end18.sink.split.i319.i_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i319.i

if.end.i315.i:                                    ; preds = %if.then31.i
  %429 = add i32 %426, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %429)
  %430 = icmp ult i32 %429, 10
  br i1 %430, label %if.end.i315.i.if.end18.sink.split.i319.i_crit_edge, label %if.end.i315.i.cec_pin_to_idle.exit320.i_crit_edge

if.end.i315.i.cec_pin_to_idle.exit320.i_crit_edge: ; preds = %if.end.i315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit320.i

if.end.i315.i.if.end18.sink.split.i319.i_crit_edge: ; preds = %if.end.i315.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i319.i

if.end18.sink.split.i319.i:                       ; preds = %if.end.i315.i.if.end18.sink.split.i319.i_crit_edge, %if.then31.i.if.end18.sink.split.i319.i_crit_edge
  %.sink369 = phi i32 [ 140, %if.then31.i.if.end18.sink.split.i319.i_crit_edge ], [ 204, %if.end.i315.i.if.end18.sink.split.i319.i_crit_edge ]
  %rx_toggle.i316.i = getelementptr i8, ptr %timer, i32 %.sink369
  %431 = ptrtoint ptr %rx_toggle.i316.i to i32
  call void @__asan_load1_noabort(i32 %431)
  %432 = load i8, ptr %rx_toggle.i316.i, align 4, !range !138
  %433 = xor i8 %432, 1
  store i8 %433, ptr %rx_toggle.i316.i, align 4
  br label %cec_pin_to_idle.exit320.i

cec_pin_to_idle.exit320.i:                        ; preds = %if.end18.sink.split.i319.i, %if.end.i315.i.cec_pin_to_idle.exit320.i_crit_edge
  %434 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end33.i:                                       ; preds = %sw.bb21.i
  br i1 %tobool.i296.i, label %if.end33.i.sw.epilogthread-pre-split_crit_edge, label %if.end36.i

if.end33.i.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end36.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3300, i32 %conv26.i)
  %cmp37.i = icmp slt i32 %conv26.i, 3300
  br i1 %cmp37.i, label %if.then39.i, label %if.end46.i311

if.then39.i:                                      ; preds = %if.end36.i
  %rx_start_bit_too_short_cnt.i = getelementptr i8, ptr %timer, i32 228
  %435 = ptrtoint ptr %rx_start_bit_too_short_cnt.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %rx_start_bit_too_short_cnt.i, align 4
  %inc40.i = add i32 %436, 1
  store i32 %inc40.i, ptr %rx_start_bit_too_short_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool41.not.i = icmp eq i32 %436, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.then39.i.if.end45.i_crit_edge

if.then39.i.if.end45.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_start_bit_too_short_ts.i = getelementptr i8, ptr %timer, i32 232
  %437 = ptrtoint ptr %rx_start_bit_too_short_ts.i to i32
  call void @__asan_store8_noabort(i32 %437)
  store i64 %412, ptr %rx_start_bit_too_short_ts.i, align 8
  %rx_start_bit_too_short_delta.i = getelementptr i8, ptr %timer, i32 240
  %438 = ptrtoint ptr %rx_start_bit_too_short_delta.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store i32 %conv26.i, ptr %rx_start_bit_too_short_delta.i, align 8
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.then39.i.if.end45.i_crit_edge
  tail call fastcc void @cec_pin_to_idle(ptr noundef %add.ptr) #9
  br label %sw.epilogthread-pre-split

if.end46.i311:                                    ; preds = %if.end36.i
  %call47.i = tail call fastcc zeroext i1 @rx_low_drive(ptr noundef %add.ptr) #9
  br i1 %call47.i, label %if.then48.i, label %if.end51.i

if.then48.i:                                      ; preds = %if.end46.i311
  call void @__sanitizer_cov_trace_pc() #11
  %439 = ptrtoint ptr %ops.i294.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %ops.i294.i, align 4
  %low.i.i312 = getelementptr inbounds %struct.cec_pin_ops, ptr %440, i32 0, i32 1
  %441 = ptrtoint ptr %low.i.i312 to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %low.i.i312, align 4
  %443 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %add.ptr, align 8
  tail call void %442(ptr noundef %444) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %445 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %445)
  store i32 36, ptr %state62, align 4
  %rx_low_drive_cnt.i = getelementptr i8, ptr %timer, i32 272
  %446 = ptrtoint ptr %rx_low_drive_cnt.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %rx_low_drive_cnt.i, align 8
  %inc50.i = add i32 %447, 1
  store i32 %inc50.i, ptr %rx_low_drive_cnt.i, align 8
  br label %sw.epilogthread-pre-split

if.end51.i:                                       ; preds = %if.end46.i311
  call void @__sanitizer_cov_trace_pc() #11
  %448 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %448)
  store i32 29, ptr %state62, align 4
  %449 = ptrtoint ptr %ts24.i to i32
  call void @__asan_store8_noabort(i32 %449)
  store i64 %call, ptr %ts24.i, align 8
  %rx_eom.i = getelementptr i8, ptr %timer, i32 63
  %450 = ptrtoint ptr %rx_eom.i to i32
  call void @__asan_store1_noabort(i32 %450)
  store i8 0, ptr %rx_eom.i, align 1
  br label %sw.epilogthread-pre-split

sw.bb54.i:                                        ; preds = %if.end61
  %ops.i322.i = getelementptr i8, ptr %timer, i32 -60
  %451 = ptrtoint ptr %ops.i322.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %ops.i322.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %452, align 4
  %455 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %add.ptr, align 8
  %call.i323.i = tail call i32 %454(ptr noundef %456) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i323.i)
  %tobool.i324.i = icmp ne i32 %call.i323.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i324.i, i1 noundef zeroext false) #9
  %457 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 30, ptr %state62, align 4
  %rx_bit.i313 = getelementptr i8, ptr %timer, i32 200
  %458 = ptrtoint ptr %rx_bit.i313 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %rx_bit.i313, align 8
  %.frozen373 = freeze i32 %459
  %div76.i = udiv i32 %.frozen373, 10
  %460 = mul i32 %div76.i, 10
  %rem.i314.decomposed = sub i32 %.frozen373, %460
  %461 = zext i32 %rem.i314.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %461, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %rem.i314.decomposed, label %sw.default.i315 [
    i32 8, label %sw.bb71.i
    i32 9, label %sw.bb54.i.sw.epilog.i321_crit_edge
  ]

sw.bb54.i.sw.epilog.i321_crit_edge:               ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i321

sw.default.i315:                                  ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %459)
  %cmp59.i = icmp ult i32 %459, 160
  br i1 %cmp59.i, label %if.then61.i, label %sw.default.i315.sw.epilog.i321_crit_edge

sw.default.i315.sw.epilog.i321_crit_edge:         ; preds = %sw.default.i315
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i321

if.then61.i:                                      ; preds = %sw.default.i315
  call void @__sanitizer_cov_trace_pc() #11
  %div.lhs.trunc.i = trunc i32 %459 to i8
  %div402.i = udiv i8 %div.lhs.trunc.i, 10
  %div.zext.i = zext i8 %div402.i to i32
  %conv63.i = zext i1 %tobool.i324.i to i32
  %sub.i316 = sub nuw nsw i32 7, %rem.i314.decomposed
  %shl.i317 = shl nuw nsw i32 %conv63.i, %sub.i316
  %arrayidx.i318 = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 17, i32 6, i32 %div.zext.i
  %462 = ptrtoint ptr %arrayidx.i318 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %arrayidx.i318, align 1
  %464 = trunc i32 %shl.i317 to i8
  %conv69.i = or i8 %463, %464
  store i8 %conv69.i, ptr %arrayidx.i318, align 1
  br label %sw.epilog.i321

sw.bb71.i:                                        ; preds = %sw.bb54.i
  call void @__sanitizer_cov_trace_pc() #11
  %frombool56.i = zext i1 %tobool.i324.i to i8
  %rx_eom73.i = getelementptr i8, ptr %timer, i32 63
  %465 = ptrtoint ptr %rx_eom73.i to i32
  call void @__asan_store1_noabort(i32 %465)
  store i8 %frombool56.i, ptr %rx_eom73.i, align 1
  %add.i319 = add nuw nsw i32 %div76.i, 1
  %len.i320 = getelementptr i8, ptr %timer, i32 160
  %466 = ptrtoint ptr %len.i320 to i32
  call void @__asan_store4_noabort(i32 %466)
  store i32 %add.i319, ptr %len.i320, align 8
  br label %sw.epilog.i321

sw.epilog.i321:                                   ; preds = %sw.bb71.i, %if.then61.i, %sw.default.i315.sw.epilog.i321_crit_edge, %sw.bb54.i.sw.epilog.i321_crit_edge
  %467 = ptrtoint ptr %rx_bit.i313 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load i32, ptr %rx_bit.i313, align 8
  %inc79.i = add i32 %468, 1
  store i32 %inc79.i, ptr %rx_bit.i313, align 8
  br label %sw.epilogthread-pre-split

sw.bb80.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %469 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %469)
  store i32 31, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.bb82.i:                                        ; preds = %if.end61
  %ops.i325.i = getelementptr i8, ptr %timer, i32 -60
  %470 = ptrtoint ptr %ops.i325.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %ops.i325.i, align 4
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 4
  %474 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %add.ptr, align 8
  %call.i326.i = tail call i32 %473(ptr noundef %475) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i326.i)
  %tobool.i327.i = icmp ne i32 %call.i326.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i327.i, i1 noundef zeroext false) #9
  %ts85.i = getelementptr i8, ptr %timer, i32 48
  %476 = ptrtoint ptr %ts85.i to i32
  call void @__asan_load8_noabort(i32 %476)
  %477 = load i64, ptr %ts85.i, align 8
  %sub.i328.i = sub i64 %call, %477
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i328.i)
  %cmp8.i.i.i329.i = icmp slt i64 %sub.i328.i, 0
  %478 = tail call i64 @llvm.abs.i64(i64 %sub.i328.i, i1 false) #9
  %479 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %478, i32 0) #13, !srcloc !140
  %asmresult.i.i.i.i330.i = extractvalue { i64, i32 } %479, 0
  %asmresult4.i.i.i.i331.i = extractvalue { i64, i32 } %479, 1
  %480 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %478, i64 %asmresult.i.i.i.i330.i, i32 %asmresult4.i.i.i.i331.i) #13, !srcloc !141
  %asmresult10.i.i.i.i332.i = extractvalue { i64, i32 } %480, 0
  %div1811.i.i.i333.i = lshr i64 %asmresult10.i.i.i.i332.i, 9
  %sub210.i.i.i334.i = sub nsw i64 0, %div1811.i.i.i333.i
  %cond213.i.i.i335.i = select i1 %cmp8.i.i.i329.i, i64 %sub210.i.i.i334.i, i64 %div1811.i.i.i333.i
  %conv87.i = trunc i64 %cond213.i.i.i335.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2900, i32 %conv87.i)
  %cmp91.i = icmp sgt i32 %conv87.i, 2900
  %or.cond290.i = select i1 %tobool.i327.i, i1 %cmp91.i, i1 false
  br i1 %or.cond290.i, label %if.then93.i, label %if.end95.i

if.then93.i:                                      ; preds = %sw.bb82.i
  %rx_data_bit_too_long_cnt.i = getelementptr i8, ptr %timer, i32 268
  %481 = ptrtoint ptr %rx_data_bit_too_long_cnt.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %rx_data_bit_too_long_cnt.i, align 4
  %inc94.i = add i32 %482, 1
  store i32 %inc94.i, ptr %rx_data_bit_too_long_cnt.i, align 4
  %tx_bit.i336.i = getelementptr i8, ptr %timer, i32 128
  %483 = ptrtoint ptr %tx_bit.i336.i to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 0, ptr %tx_bit.i336.i, align 8
  %rx_bit.i337.i = getelementptr i8, ptr %timer, i32 200
  %484 = ptrtoint ptr %rx_bit.i337.i to i32
  call void @__asan_store4_noabort(i32 %484)
  store i32 0, ptr %rx_bit.i337.i, align 8
  %len.i338.i = getelementptr i8, ptr %timer, i32 160
  %485 = ptrtoint ptr %len.i338.i to i32
  call void @__asan_store4_noabort(i32 %485)
  store i32 0, ptr %len.i338.i, align 8
  %msg.i339.i = getelementptr i8, ptr %timer, i32 176
  %486 = call ptr @memset(ptr %msg.i339.i, i32 0, i32 16)
  %487 = ptrtoint ptr %ts85.i to i32
  call void @__asan_store8_noabort(i32 %487)
  store i64 0, ptr %ts85.i, align 8
  %tx_generated_poll.i341.i = getelementptr i8, ptr %timer, i32 1566
  %488 = ptrtoint ptr %tx_generated_poll.i341.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 0, ptr %tx_generated_poll.i341.i, align 2
  %tx_post_eom.i342.i = getelementptr i8, ptr %timer, i32 1567
  %489 = ptrtoint ptr %tx_post_eom.i342.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 0, ptr %tx_post_eom.i342.i, align 1
  %490 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %state62, align 4
  %492 = add i32 %491, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %492)
  %493 = icmp ult i32 %492, 25
  br i1 %493, label %if.then93.i.if.end18.sink.split.i350.i_crit_edge, label %if.end.i346.i

if.then93.i.if.end18.sink.split.i350.i_crit_edge: ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i350.i

if.end.i346.i:                                    ; preds = %if.then93.i
  %494 = add i32 %491, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %494)
  %495 = icmp ult i32 %494, 10
  br i1 %495, label %if.end.i346.i.if.end18.sink.split.i350.i_crit_edge, label %if.end.i346.i.cec_pin_to_idle.exit351.i_crit_edge

if.end.i346.i.cec_pin_to_idle.exit351.i_crit_edge: ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit351.i

if.end.i346.i.if.end18.sink.split.i350.i_crit_edge: ; preds = %if.end.i346.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i350.i

if.end18.sink.split.i350.i:                       ; preds = %if.end.i346.i.if.end18.sink.split.i350.i_crit_edge, %if.then93.i.if.end18.sink.split.i350.i_crit_edge
  %.sink370 = phi i32 [ 140, %if.then93.i.if.end18.sink.split.i350.i_crit_edge ], [ 204, %if.end.i346.i.if.end18.sink.split.i350.i_crit_edge ]
  %rx_toggle.i347.i = getelementptr i8, ptr %timer, i32 %.sink370
  %496 = ptrtoint ptr %rx_toggle.i347.i to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %rx_toggle.i347.i, align 4, !range !138
  %498 = xor i8 %497, 1
  store i8 %498, ptr %rx_toggle.i347.i, align 4
  br label %cec_pin_to_idle.exit351.i

cec_pin_to_idle.exit351.i:                        ; preds = %if.end18.sink.split.i350.i, %if.end.i346.i.cec_pin_to_idle.exit351.i_crit_edge
  %499 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end95.i:                                       ; preds = %sw.bb82.i
  br i1 %tobool.i327.i, label %if.end95.i.sw.epilogthread-pre-split_crit_edge, label %if.end98.i

if.end95.i.sw.epilogthread-pre-split_crit_edge:   ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end98.i:                                       ; preds = %if.end95.i
  %call.i.i352.i = tail call zeroext i16 @cec_pin_rx_error_inj(ptr noundef %add.ptr) #9
  %idxprom.i.i353.i = zext i16 %call.i.i352.i to i32
  %arrayidx.i.i354.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 57, i32 %idxprom.i.i353.i
  %500 = ptrtoint ptr %arrayidx.i.i354.i to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %arrayidx.i.i354.i, align 8
  %arrayidx4.i.i355.i = getelementptr %struct.cec_pin, ptr %add.ptr, i32 0, i32 58, i32 %idxprom.i.i353.i, i32 0
  %502 = ptrtoint ptr %arrayidx4.i.i355.i to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx4.i.i355.i, align 1
  %conv6.i.i.i322 = zext i8 %503 to i32
  %rx_bit.i.i.i = getelementptr i8, ptr %timer, i32 200
  %504 = ptrtoint ptr %rx_bit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %rx_bit.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %505, i32 %conv6.i.i.i322)
  %cmp7.not.i.i.i323 = icmp eq i32 %505, %conv6.i.i.i322
  br i1 %cmp7.not.i.i.i323, label %if.end11.i.i.i324, label %if.end98.i.if.end104.i_crit_edge

if.end98.i.if.end104.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.end11.i.i.i324:                                ; preds = %if.end98.i
  %506 = trunc i64 %501 to i32
  %507 = lshr i32 %506, 2
  %conv.i.i356.i = and i32 %507, 3
  %508 = zext i32 %conv.i.i356.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %508, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %conv.i.i356.i, label %if.end11.i.i.i324.if.end104.i_crit_edge [
    i32 1, label %sw.bb.i.i358.i
    i32 2, label %if.end11.i.i.i324.if.then100.i_crit_edge
    i32 3, label %rx_low_drive.exit.i
  ]

if.end11.i.i.i324.if.then100.i_crit_edge:         ; preds = %if.end11.i.i.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then100.i

if.end11.i.i.i324.if.end104.i_crit_edge:          ; preds = %if.end11.i.i.i324
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

sw.bb.i.i358.i:                                   ; preds = %if.end11.i.i.i324
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i357.i = and i64 %501, -13
  %509 = ptrtoint ptr %arrayidx.i.i354.i to i32
  call void @__asan_store8_noabort(i32 %509)
  store i64 %and16.i.i357.i, ptr %arrayidx.i.i354.i, align 8
  br label %if.then100.i

rx_low_drive.exit.i:                              ; preds = %if.end11.i.i.i324
  %rx_toggle.i.i359.i = getelementptr i8, ptr %timer, i32 204
  %510 = ptrtoint ptr %rx_toggle.i.i359.i to i32
  call void @__asan_load1_noabort(i32 %510)
  %511 = load i8, ptr %rx_toggle.i.i359.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %511)
  %tobool19.i.i360.not.i = icmp eq i8 %511, 0
  br i1 %tobool19.i.i360.not.i, label %rx_low_drive.exit.i.if.end104.i_crit_edge, label %rx_low_drive.exit.i.if.then100.i_crit_edge

rx_low_drive.exit.i.if.then100.i_crit_edge:       ; preds = %rx_low_drive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then100.i

rx_low_drive.exit.i.if.end104.i_crit_edge:        ; preds = %rx_low_drive.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104.i

if.then100.i:                                     ; preds = %rx_low_drive.exit.i.if.then100.i_crit_edge, %sw.bb.i.i358.i, %if.end11.i.i.i324.if.then100.i_crit_edge
  %512 = ptrtoint ptr %ops.i325.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %ops.i325.i, align 4
  %low.i364.i = getelementptr inbounds %struct.cec_pin_ops, ptr %513, i32 0, i32 1
  %514 = ptrtoint ptr %low.i364.i to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %low.i364.i, align 4
  %516 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %add.ptr, align 8
  tail call void %515(ptr noundef %517) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %518 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 36, ptr %state62, align 4
  %rx_low_drive_cnt102.i = getelementptr i8, ptr %timer, i32 272
  %519 = ptrtoint ptr %rx_low_drive_cnt102.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %rx_low_drive_cnt102.i, align 8
  %inc103.i = add i32 %520, 1
  store i32 %inc103.i, ptr %rx_low_drive_cnt102.i, align 8
  br label %sw.epilogthread-pre-split

if.end104.i:                                      ; preds = %rx_low_drive.exit.i.if.end104.i_crit_edge, %if.end11.i.i.i324.if.end104.i_crit_edge, %if.end98.i.if.end104.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2050, i32 %conv87.i)
  %cmp105.i = icmp slt i32 %conv87.i, 2050
  br i1 %cmp105.i, label %if.then107.i, label %if.end117.i

if.then107.i:                                     ; preds = %if.end104.i
  %rx_data_bit_too_short_cnt.i = getelementptr i8, ptr %timer, i32 248
  %521 = ptrtoint ptr %rx_data_bit_too_short_cnt.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %rx_data_bit_too_short_cnt.i, align 8
  %inc108.i = add i32 %522, 1
  store i32 %inc108.i, ptr %rx_data_bit_too_short_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %522)
  %tobool109.not.i = icmp eq i32 %522, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.then107.i.if.end113.i_crit_edge

if.then107.i.if.end113.i_crit_edge:               ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end113.i

if.then110.i:                                     ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #11
  %523 = ptrtoint ptr %ts85.i to i32
  call void @__asan_load8_noabort(i32 %523)
  %524 = load i64, ptr %ts85.i, align 8
  %rx_data_bit_too_short_ts.i = getelementptr i8, ptr %timer, i32 256
  %525 = ptrtoint ptr %rx_data_bit_too_short_ts.i to i32
  call void @__asan_store8_noabort(i32 %525)
  store i64 %524, ptr %rx_data_bit_too_short_ts.i, align 8
  %rx_data_bit_too_short_delta.i = getelementptr i8, ptr %timer, i32 264
  %526 = ptrtoint ptr %rx_data_bit_too_short_delta.i to i32
  call void @__asan_store4_noabort(i32 %526)
  store i32 %conv87.i, ptr %rx_data_bit_too_short_delta.i, align 8
  br label %if.end113.i

if.end113.i:                                      ; preds = %if.then110.i, %if.then107.i.if.end113.i_crit_edge
  %527 = ptrtoint ptr %ops.i325.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %ops.i325.i, align 4
  %low.i366.i = getelementptr inbounds %struct.cec_pin_ops, ptr %528, i32 0, i32 1
  %529 = ptrtoint ptr %low.i366.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load ptr, ptr %low.i366.i, align 4
  %531 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %add.ptr, align 8
  tail call void %530(ptr noundef %532) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %533 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %533)
  store i32 36, ptr %state62, align 4
  %rx_low_drive_cnt115.i = getelementptr i8, ptr %timer, i32 272
  %534 = ptrtoint ptr %rx_low_drive_cnt115.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %rx_low_drive_cnt115.i, align 8
  %inc116.i = add i32 %535, 1
  store i32 %inc116.i, ptr %rx_low_drive_cnt115.i, align 8
  br label %sw.epilogthread-pre-split

if.end117.i:                                      ; preds = %if.end104.i
  %536 = ptrtoint ptr %ts85.i to i32
  call void @__asan_store8_noabort(i32 %536)
  store i64 %call, ptr %ts85.i, align 8
  %rem120.i = urem i32 %505, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %rem120.i)
  %cmp121.not.i = icmp eq i32 %rem120.i, 9
  br i1 %cmp121.not.i, label %if.end125.i, label %if.then123.i

if.then123.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #11
  %537 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 29, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end125.i:                                      ; preds = %if.end117.i
  %msg1.i.i325 = getelementptr i8, ptr %timer, i32 176
  %538 = ptrtoint ptr %msg1.i.i325 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %msg1.i.i325, align 8
  %540 = and i8 %539, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %540)
  %cmp129.i = icmp eq i8 %540, 15
  br i1 %cmp129.i, label %if.end125.i.land.lhs.true147.i_crit_edge, label %lor.end.i

if.end125.i.land.lhs.true147.i_crit_edge:         ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true147.i

lor.end.i:                                        ; preds = %if.end125.i
  %conv128.i = zext i8 %540 to i32
  %la_mask.i = getelementptr i8, ptr %timer, i32 60
  %541 = ptrtoint ptr %la_mask.i to i32
  call void @__asan_load2_noabort(i32 %541)
  %542 = load i16, ptr %la_mask.i, align 4
  %conv134.i = zext i16 %542 to i32
  %shl136.i = shl nuw nsw i32 1, %conv128.i
  %and137.i = and i32 %shl136.i, %conv134.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %lor.end.i.if.then157.i_crit_edge, label %lor.end.i.land.lhs.true147.i_crit_edge

lor.end.i.land.lhs.true147.i_crit_edge:           ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true147.i

lor.end.i.if.then157.i_crit_edge:                 ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then157.i

land.lhs.true147.i:                               ; preds = %lor.end.i.land.lhs.true147.i_crit_edge, %if.end125.i.land.lhs.true147.i_crit_edge
  %call148.i = tail call fastcc zeroext i1 @rx_nack(ptr noundef %add.ptr) #9
  %spec.select291.i = xor i1 %cmp129.i, %call148.i
  br i1 %spec.select291.i, label %land.lhs.true147.i.if.then157.i_crit_edge, label %if.end159.i

land.lhs.true147.i.if.then157.i_crit_edge:        ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then157.i

if.then157.i:                                     ; preds = %land.lhs.true147.i.if.then157.i_crit_edge, %lor.end.i.if.then157.i_crit_edge
  %543 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %543)
  store i32 34, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end159.i:                                      ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #11
  %544 = ptrtoint ptr %ops.i325.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %ops.i325.i, align 4
  %low.i368.i = getelementptr inbounds %struct.cec_pin_ops, ptr %545, i32 0, i32 1
  %546 = ptrtoint ptr %low.i368.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %low.i368.i, align 4
  %548 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %add.ptr, align 8
  tail call void %547(ptr noundef %549) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %550 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %550)
  store i32 32, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.bb161.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i369.i = getelementptr i8, ptr %timer, i32 -60
  %551 = ptrtoint ptr %ops.i369.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %ops.i369.i, align 4
  %high.i.i326 = getelementptr inbounds %struct.cec_pin_ops, ptr %552, i32 0, i32 2
  %553 = ptrtoint ptr %high.i.i326 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %high.i.i326, align 4
  %555 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %add.ptr, align 8
  tail call void %554(ptr noundef %556) #9
  %557 = ptrtoint ptr %ops.i369.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %ops.i369.i, align 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %558, align 4
  %561 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %add.ptr, align 8
  %call.i.i370.i = tail call i32 %560(ptr noundef %562) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i370.i)
  %tobool.i.i.i327 = icmp ne i32 %call.i.i370.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i.i327, i1 noundef zeroext false) #9
  %563 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 33, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.bb164.i:                                       ; preds = %if.end61.sw.bb164.i_crit_edge, %if.end61.sw.bb164.i_crit_edge398
  %ops.i371.i = getelementptr i8, ptr %timer, i32 -60
  %564 = ptrtoint ptr %ops.i371.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %ops.i371.i, align 4
  %566 = ptrtoint ptr %565 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %565, align 4
  %568 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %add.ptr, align 8
  %call.i372.i = tail call i32 %567(ptr noundef %569) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i372.i)
  %tobool.i373.i = icmp ne i32 %call.i372.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i373.i, i1 noundef zeroext false) #9
  br i1 %tobool.i373.i, label %land.lhs.true169.i, label %sw.bb164.i.if.end179.i_crit_edge

sw.bb164.i.if.end179.i_crit_edge:                 ; preds = %sw.bb164.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179.i

land.lhs.true169.i:                               ; preds = %sw.bb164.i
  %rx_eom170.i = getelementptr i8, ptr %timer, i32 63
  %570 = ptrtoint ptr %rx_eom170.i to i32
  call void @__asan_load1_noabort(i32 %570)
  %571 = load i8, ptr %rx_eom170.i, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %571)
  %tobool171.not.i = icmp eq i8 %571, 0
  br i1 %tobool171.not.i, label %land.lhs.true169.i.if.end179.i_crit_edge, label %if.then173.i

land.lhs.true169.i.if.end179.i_crit_edge:         ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end179.i

if.then173.i:                                     ; preds = %land.lhs.true169.i
  call void @__sanitizer_cov_trace_pc() #11
  %work_rx_msg.i = getelementptr i8, ptr %timer, i32 280
  %rx_msg174.i = getelementptr i8, ptr %timer, i32 144
  %572 = call ptr @memcpy(ptr %work_rx_msg.i, ptr %rx_msg174.i, i32 56)
  %rx_ts.i = getelementptr i8, ptr %timer, i32 288
  %573 = ptrtoint ptr %rx_ts.i to i32
  call void @__asan_store8_noabort(i32 %573)
  store i64 %call, ptr %rx_ts.i, align 8
  %kthread_waitq.i328 = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq.i328, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %ts177.i = getelementptr i8, ptr %timer, i32 48
  %574 = ptrtoint ptr %ts177.i to i32
  call void @__asan_store8_noabort(i32 %574)
  store i64 %call, ptr %ts177.i, align 8
  %575 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 35, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

if.end179.i:                                      ; preds = %land.lhs.true169.i.if.end179.i_crit_edge, %sw.bb164.i.if.end179.i_crit_edge
  %rx_bit180.i = getelementptr i8, ptr %timer, i32 200
  %576 = ptrtoint ptr %rx_bit180.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %rx_bit180.i, align 8
  %inc181.i = add i32 %577, 1
  store i32 %inc181.i, ptr %rx_bit180.i, align 8
  %578 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 31, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

cec_pin_to_idle.exit389.i:                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  %tx_bit.i374.i = getelementptr i8, ptr %timer, i32 128
  %579 = ptrtoint ptr %tx_bit.i374.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 0, ptr %tx_bit.i374.i, align 8
  %rx_bit.i375.i = getelementptr i8, ptr %timer, i32 200
  %580 = ptrtoint ptr %rx_bit.i375.i to i32
  call void @__asan_store4_noabort(i32 %580)
  store i32 0, ptr %rx_bit.i375.i, align 8
  %len.i376.i = getelementptr i8, ptr %timer, i32 160
  %581 = ptrtoint ptr %len.i376.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 0, ptr %len.i376.i, align 8
  %msg.i377.i = getelementptr i8, ptr %timer, i32 176
  %582 = call ptr @memset(ptr %msg.i377.i, i32 0, i32 16)
  %ts.i378.i = getelementptr i8, ptr %timer, i32 48
  %583 = ptrtoint ptr %ts.i378.i to i32
  call void @__asan_store8_noabort(i32 %583)
  store i64 0, ptr %ts.i378.i, align 8
  %tx_generated_poll.i379.i = getelementptr i8, ptr %timer, i32 1566
  %584 = ptrtoint ptr %tx_generated_poll.i379.i to i32
  call void @__asan_store1_noabort(i32 %584)
  store i8 0, ptr %tx_generated_poll.i379.i, align 2
  %tx_post_eom.i380.i = getelementptr i8, ptr %timer, i32 1567
  %585 = ptrtoint ptr %tx_post_eom.i380.i to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 0, ptr %tx_post_eom.i380.i, align 1
  %rx_toggle.i385.i = getelementptr i8, ptr %timer, i32 204
  %586 = ptrtoint ptr %rx_toggle.i385.i to i32
  call void @__asan_load1_noabort(i32 %586)
  %587 = load i8, ptr %rx_toggle.i385.i, align 4, !range !138
  %588 = xor i8 %587, 1
  store i8 %588, ptr %rx_toggle.i385.i, align 4
  %589 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.bb64:                                          ; preds = %if.end61.sw.bb64_crit_edge, %if.end61.sw.bb64_crit_edge397
  %ops.i329 = getelementptr i8, ptr %timer, i32 -60
  %590 = ptrtoint ptr %ops.i329 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %ops.i329, align 4
  %high.i = getelementptr inbounds %struct.cec_pin_ops, ptr %591, i32 0, i32 2
  %592 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %high.i, align 4
  %594 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load ptr, ptr %add.ptr, align 8
  tail call void %593(ptr noundef %595) #9
  %596 = ptrtoint ptr %ops.i329 to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %ops.i329, align 4
  %598 = ptrtoint ptr %597 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %597, align 4
  %600 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %add.ptr, align 8
  %call.i.i330 = tail call i32 %599(ptr noundef %601) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i330)
  %tobool.i.i331 = icmp ne i32 %call.i.i330, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i331, i1 noundef zeroext false) #9
  %ts77 = getelementptr i8, ptr %timer, i32 48
  br i1 %tobool.i.i331, label %if.end76, label %if.then66

if.then66:                                        ; preds = %sw.bb64
  %602 = ptrtoint ptr %ts77 to i32
  call void @__asan_store8_noabort(i32 %602)
  store i64 %call, ptr %ts77, align 8
  %603 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 27, ptr %state62, align 4
  %len = getelementptr i8, ptr %timer, i32 88
  %604 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %605)
  %tobool69.not = icmp eq i32 %605, 0
  br i1 %tobool69.not, label %if.then66.sw.default145_crit_edge, label %land.lhs.true70

if.then66.sw.default145_crit_edge:                ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default145

land.lhs.true70:                                  ; preds = %if.then66
  %tx_signal_free_time = getelementptr i8, ptr %timer, i32 136
  %606 = ptrtoint ptr %tx_signal_free_time to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %tx_signal_free_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %607)
  %cmp71 = icmp ugt i32 %607, 5
  br i1 %cmp71, label %if.then73, label %land.lhs.true70.sw.epilogthread-pre-split_crit_edge

land.lhs.true70.sw.epilogthread-pre-split_crit_edge: ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then73:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  %608 = ptrtoint ptr %tx_signal_free_time to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 5, ptr %tx_signal_free_time, align 8
  br label %sw.epilogthread-pre-split

if.end76:                                         ; preds = %sw.bb64
  %609 = ptrtoint ptr %ts77 to i32
  call void @__asan_load8_noabort(i32 %609)
  %610 = load i64, ptr %ts77, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %610)
  %cmp79 = icmp eq i64 %610, 0
  br i1 %cmp79, label %if.then81, label %if.end76.if.end83_crit_edge

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %611 = ptrtoint ptr %ts77 to i32
  call void @__asan_store8_noabort(i32 %611)
  store i64 %call, ptr %ts77, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end76.if.end83_crit_edge
  %len85 = getelementptr i8, ptr %timer, i32 88
  %612 = ptrtoint ptr %len85 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %len85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %613)
  %tobool86.not = icmp eq i32 %613, 0
  br i1 %tobool86.not, label %if.end110, label %if.then87

if.then87:                                        ; preds = %if.end83
  %614 = ptrtoint ptr %ts77 to i32
  call void @__asan_load8_noabort(i32 %614)
  %615 = load i64, ptr %ts77, align 8
  %sub.i332 = sub i64 %call, %615
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i332)
  %cmp8.i.i.i333 = icmp slt i64 %sub.i332, 0
  %616 = tail call i64 @llvm.abs.i64(i64 %sub.i332, i1 false) #9
  %617 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %616, i32 0) #13, !srcloc !140
  %asmresult.i.i.i.i334 = extractvalue { i64, i32 } %617, 0
  %asmresult4.i.i.i.i335 = extractvalue { i64, i32 } %617, 1
  %618 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %616, i64 %asmresult.i.i.i.i334, i32 %asmresult4.i.i.i.i335) #13, !srcloc !141
  %asmresult10.i.i.i.i336 = extractvalue { i64, i32 } %618, 0
  %div1811.i.i.i337 = lshr i64 %asmresult10.i.i.i.i336, 9
  %sub210.i.i.i338 = sub nsw i64 0, %div1811.i.i.i337
  %cond213.i.i.i339 = select i1 %cmp8.i.i.i333, i64 %sub210.i.i.i338, i64 %div1811.i.i.i337
  %conv90 = trunc i64 %cond213.i.i.i339 to i32
  %div91 = sdiv i32 %conv90, 2400
  %tx_signal_free_time92 = getelementptr i8, ptr %timer, i32 136
  %619 = ptrtoint ptr %tx_signal_free_time92 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %tx_signal_free_time92, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div91, i32 %620)
  %cmp93.not = icmp ult i32 %div91, %620
  br i1 %cmp93.not, label %if.end101, label %if.then95

if.then95:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %tx_nacked = getelementptr i8, ptr %timer, i32 132
  %621 = ptrtoint ptr %tx_nacked to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 0, ptr %tx_nacked, align 4
  %call96 = tail call fastcc zeroext i1 @tx_custom_start(ptr noundef %add.ptr)
  %. = select i1 %call96, i32 8, i32 4
  %622 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %., ptr %state62, align 4
  %623 = ptrtoint ptr %ops.i329 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %ops.i329, align 4
  %low.i = getelementptr inbounds %struct.cec_pin_ops, ptr %624, i32 0, i32 1
  %625 = ptrtoint ptr %low.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %low.i, align 4
  %627 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %add.ptr, align 8
  tail call void %626(ptr noundef %628) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %sw.epilogthread-pre-split

if.end101:                                        ; preds = %if.then87
  %sub104 = add i32 %620, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %div91, i32 %sub104)
  %cmp105.not = icmp ult i32 %div91, %sub104
  br i1 %cmp105.not, label %if.end101.sw.epilogthread-pre-split_crit_edge, label %if.then107

if.end101.sw.epilogthread-pre-split_crit_edge:    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %629 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 2, ptr %state62, align 4
  br label %sw.default145

if.end110:                                        ; preds = %if.end83
  %tx_custom_pulse = getelementptr i8, ptr %timer, i32 1565
  %630 = ptrtoint ptr %tx_custom_pulse to i32
  call void @__asan_load1_noabort(i32 %630)
  %631 = load i8, ptr %tx_custom_pulse, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %631)
  %tobool111.not = icmp eq i8 %631, 0
  %632 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %632)
  %.pr = load i32, ptr %state62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp122.not = icmp eq i32 %.pr, 1
  br i1 %tobool111.not, label %if.end120, label %land.lhs.true113

land.lhs.true113:                                 ; preds = %if.end110
  br i1 %cmp122.not, label %sw.epilog.thread366, label %land.lhs.true113.sw.epilog_crit_edge

land.lhs.true113.sw.epilog_crit_edge:             ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.thread366:                              ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  %633 = ptrtoint ptr %tx_custom_pulse to i32
  call void @__asan_store1_noabort(i32 %633)
  store i8 0, ptr %tx_custom_pulse, align 1
  %634 = ptrtoint ptr %ops.i329 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %ops.i329, align 4
  %low.i342 = getelementptr inbounds %struct.cec_pin_ops, ptr %635, i32 0, i32 1
  %636 = ptrtoint ptr %low.i342 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %low.i342, align 4
  %638 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %add.ptr, align 8
  tail call void %637(ptr noundef %639) #9
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %640 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 24, ptr %state62, align 4
  br label %sw.bb143

if.end120:                                        ; preds = %if.end110
  br i1 %cmp122.not, label %lor.lhs.false, label %if.end120.sw.epilog_crit_edge

if.end120.sw.epilog_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %if.end120
  %641 = ptrtoint ptr %ops.i329 to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %ops.i329, align 4
  %enable_irq = getelementptr inbounds %struct.cec_pin_ops, ptr %642, i32 0, i32 3
  %643 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %enable_irq, align 4
  %cmp124 = icmp eq ptr %644, null
  br i1 %cmp124, label %lor.lhs.false.sw.epilogthread-pre-split_crit_edge, label %lor.lhs.false126

lor.lhs.false.sw.epilogthread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

lor.lhs.false126:                                 ; preds = %lor.lhs.false
  %enable_irq_failed = getelementptr i8, ptr %timer, i32 64
  %645 = ptrtoint ptr %enable_irq_failed to i32
  call void @__asan_load1_noabort(i32 %645)
  %646 = load i8, ptr %enable_irq_failed, align 8, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %646)
  %tobool127.not = icmp eq i8 %646, 0
  br i1 %tobool127.not, label %lor.lhs.false129, label %lor.lhs.false126.sw.epilogthread-pre-split_crit_edge

lor.lhs.false126.sw.epilogthread-pre-split_crit_edge: ; preds = %lor.lhs.false126
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

lor.lhs.false129:                                 ; preds = %lor.lhs.false126
  %is_configuring = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 20
  %647 = ptrtoint ptr %is_configuring to i32
  call void @__asan_load1_noabort(i32 %647)
  %648 = load i8, ptr %is_configuring, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %648)
  %tobool130.not = icmp eq i8 %648, 0
  br i1 %tobool130.not, label %lor.lhs.false132, label %lor.lhs.false129.sw.epilogthread-pre-split_crit_edge

lor.lhs.false129.sw.epilogthread-pre-split_crit_edge: ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

lor.lhs.false132:                                 ; preds = %lor.lhs.false129
  %is_configured = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 21
  %649 = ptrtoint ptr %is_configured to i32
  call void @__asan_load1_noabort(i32 %649)
  %650 = load i8, ptr %is_configured, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %650)
  %tobool133.not = icmp eq i8 %650, 0
  br i1 %tobool133.not, label %lor.lhs.false135, label %lor.lhs.false132.sw.epilogthread-pre-split_crit_edge

lor.lhs.false132.sw.epilogthread-pre-split_crit_edge: ; preds = %lor.lhs.false132
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

lor.lhs.false135:                                 ; preds = %lor.lhs.false132
  %monitor_all_cnt = getelementptr inbounds %struct.cec_adapter, ptr %1, i32 0, i32 25
  %651 = ptrtoint ptr %monitor_all_cnt to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %monitor_all_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %652)
  %tobool136.not = icmp eq i32 %652, 0
  br i1 %tobool136.not, label %if.end138, label %lor.lhs.false135.sw.epilogthread-pre-split_crit_edge

lor.lhs.false135.sw.epilogthread-pre-split_crit_edge: ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilogthread-pre-split

if.end138:                                        ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #11
  %work_irq_change = getelementptr i8, ptr %timer, i32 352
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_irq_change, i32 noundef 4) #9
  %653 = ptrtoint ptr %work_irq_change to i32
  call void @__asan_store4_noabort(i32 %653)
  store volatile i32 2, ptr %work_irq_change, align 4
  %654 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %654)
  store i32 37, ptr %state62, align 4
  %kthread_waitq = getelementptr i8, ptr %timer, i32 -52
  tail call void @__wake_up(ptr noundef %kthread_waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

sw.bb140:                                         ; preds = %if.end61.sw.bb140_crit_edge, %if.end61.sw.bb140_crit_edge396
  %ops.i343 = getelementptr i8, ptr %timer, i32 -60
  %655 = ptrtoint ptr %ops.i343 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %ops.i343, align 4
  %high.i344 = getelementptr inbounds %struct.cec_pin_ops, ptr %656, i32 0, i32 2
  %657 = ptrtoint ptr %high.i344 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %high.i344, align 4
  %659 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %add.ptr, align 8
  tail call void %658(ptr noundef %660) #9
  %661 = ptrtoint ptr %ops.i343 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %ops.i343, align 4
  %663 = ptrtoint ptr %662 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %662, align 4
  %665 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %add.ptr, align 8
  %call.i.i345 = tail call i32 %664(ptr noundef %666) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i345)
  %tobool.i.i346 = icmp ne i32 %call.i.i345, 0
  tail call fastcc void @cec_pin_update(ptr noundef %add.ptr, i1 noundef zeroext %tobool.i.i346, i1 noundef zeroext false) #9
  %tx_bit.i = getelementptr i8, ptr %timer, i32 128
  %667 = ptrtoint ptr %tx_bit.i to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 0, ptr %tx_bit.i, align 8
  %rx_bit.i347 = getelementptr i8, ptr %timer, i32 200
  %668 = ptrtoint ptr %rx_bit.i347 to i32
  call void @__asan_store4_noabort(i32 %668)
  store i32 0, ptr %rx_bit.i347, align 8
  %len.i348 = getelementptr i8, ptr %timer, i32 160
  %669 = ptrtoint ptr %len.i348 to i32
  call void @__asan_store4_noabort(i32 %669)
  store i32 0, ptr %len.i348, align 8
  %msg.i = getelementptr i8, ptr %timer, i32 176
  %670 = call ptr @memset(ptr %msg.i, i32 0, i32 16)
  %ts.i = getelementptr i8, ptr %timer, i32 48
  %671 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %671)
  store i64 0, ptr %ts.i, align 8
  %tx_generated_poll.i349 = getelementptr i8, ptr %timer, i32 1566
  %672 = ptrtoint ptr %tx_generated_poll.i349 to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 0, ptr %tx_generated_poll.i349, align 2
  %tx_post_eom.i350 = getelementptr i8, ptr %timer, i32 1567
  %673 = ptrtoint ptr %tx_post_eom.i350 to i32
  call void @__asan_store1_noabort(i32 %673)
  store i8 0, ptr %tx_post_eom.i350, align 1
  %674 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %state62, align 4
  %676 = add i32 %675, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %676)
  %677 = icmp ult i32 %676, 25
  br i1 %677, label %sw.bb140.if.end18.sink.split.i_crit_edge, label %if.end.i352

sw.bb140.if.end18.sink.split.i_crit_edge:         ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.end.i352:                                      ; preds = %sw.bb140
  %678 = add i32 %675, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %678)
  %679 = icmp ult i32 %678, 10
  br i1 %679, label %if.end.i352.if.end18.sink.split.i_crit_edge, label %if.end.i352.cec_pin_to_idle.exit_crit_edge

if.end.i352.cec_pin_to_idle.exit_crit_edge:       ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit

if.end.i352.if.end18.sink.split.i_crit_edge:      ; preds = %if.end.i352
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.end.i352.if.end18.sink.split.i_crit_edge, %sw.bb140.if.end18.sink.split.i_crit_edge
  %.sink371 = phi i32 [ 140, %sw.bb140.if.end18.sink.split.i_crit_edge ], [ 204, %if.end.i352.if.end18.sink.split.i_crit_edge ]
  %rx_toggle.i = getelementptr i8, ptr %timer, i32 %.sink371
  %680 = ptrtoint ptr %rx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %680)
  %681 = load i8, ptr %rx_toggle.i, align 4, !range !138
  %682 = xor i8 %681, 1
  store i8 %682, ptr %rx_toggle.i, align 4
  br label %cec_pin_to_idle.exit

cec_pin_to_idle.exit:                             ; preds = %if.end18.sink.split.i, %if.end.i352.cec_pin_to_idle.exit_crit_edge
  %683 = ptrtoint ptr %state62 to i32
  call void @__asan_store4_noabort(i32 %683)
  store i32 1, ptr %state62, align 4
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %cec_pin_to_idle.exit, %lor.lhs.false135.sw.epilogthread-pre-split_crit_edge, %lor.lhs.false132.sw.epilogthread-pre-split_crit_edge, %lor.lhs.false129.sw.epilogthread-pre-split_crit_edge, %lor.lhs.false126.sw.epilogthread-pre-split_crit_edge, %lor.lhs.false.sw.epilogthread-pre-split_crit_edge, %if.end101.sw.epilogthread-pre-split_crit_edge, %if.then95, %if.then73, %land.lhs.true70.sw.epilogthread-pre-split_crit_edge, %cec_pin_to_idle.exit389.i, %if.end179.i, %if.then173.i, %sw.bb161.i, %if.end159.i, %if.then157.i, %if.then123.i, %if.end113.i, %if.then100.i, %if.end95.i.sw.epilogthread-pre-split_crit_edge, %cec_pin_to_idle.exit351.i, %sw.bb80.i, %sw.epilog.i321, %if.end51.i, %if.then48.i, %if.end45.i, %if.end33.i.sw.epilogthread-pre-split_crit_edge, %cec_pin_to_idle.exit320.i, %if.then13.i, %rx_arb_lost.exit.i.sw.epilogthread-pre-split_crit_edge, %land.rhs.i.i.sw.epilogthread-pre-split_crit_edge, %if.end11.i300.sw.epilogthread-pre-split_crit_edge, %cec_pin_to_idle.exit.i299, %sw.bb.i288.sw.epilogthread-pre-split_crit_edge, %cec_pin_to_idle.exit595.i, %sw.bb283.i, %if.then280.i, %land.lhs.true277.i.sw.epilogthread-pre-split_crit_edge, %lor.lhs.false269.i.sw.epilogthread-pre-split_crit_edge, %if.end256.critedge.i.sw.epilogthread-pre-split_crit_edge, %if.then250.i, %land.lhs.true247.critedge.i.sw.epilogthread-pre-split_crit_edge, %if.then243.i, %if.then206.i, %sw.bb189.i, %if.end187.i, %if.end139.i, %if.end74.i, %if.end57.i, %if.then50.i.sw.epilogthread-pre-split_crit_edge, %if.end42.i, %if.then26.i, %if.end20.i, %sw.bb13.i, %if.end11.i, %cec_pin_to_idle.exit.i, %sw.bb.i.sw.epilogthread-pre-split_crit_edge, %sw.bb.sw.epilogthread-pre-split_crit_edge
  %684 = ptrtoint ptr %state62 to i32
  call void @__asan_load4_noabort(i32 %684)
  %.pr365 = load i32, ptr %state62, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end120.sw.epilog_crit_edge, %land.lhs.true113.sw.epilog_crit_edge, %if.end61.sw.epilog_crit_edge
  %685 = phi i32 [ %.pr365, %sw.epilogthread-pre-split ], [ %49, %if.end61.sw.epilog_crit_edge ], [ %.pr, %if.end120.sw.epilog_crit_edge ], [ %.pr, %land.lhs.true113.sw.epilog_crit_edge ]
  %686 = zext i32 %685 to i64
  call void @__sanitizer_cov_trace_switch(i64 %686, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %685, label %sw.epilog.sw.default145_crit_edge [
    i32 8, label %sw.epilog.sw.bb143_crit_edge
    i32 22, label %sw.epilog.sw.bb143_crit_edge410
    i32 24, label %sw.epilog.sw.bb143_crit_edge411
    i32 9, label %sw.epilog.sw.bb144_crit_edge
    i32 23, label %sw.epilog.sw.bb144_crit_edge412
    i32 25, label %sw.epilog.sw.bb144_crit_edge413
  ]

sw.epilog.sw.bb144_crit_edge413:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb144

sw.epilog.sw.bb144_crit_edge412:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb144

sw.epilog.sw.bb144_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb144

sw.epilog.sw.bb143_crit_edge411:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb143

sw.epilog.sw.bb143_crit_edge410:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb143

sw.epilog.sw.bb143_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb143

sw.epilog.sw.default145_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.default145

sw.bb143:                                         ; preds = %sw.epilog.sw.bb143_crit_edge, %sw.epilog.sw.bb143_crit_edge410, %sw.epilog.sw.bb143_crit_edge411, %sw.epilog.thread366
  %tx_custom_low_usecs = getelementptr i8, ptr %timer, i32 1556
  br label %sw.epilog148

sw.bb144:                                         ; preds = %sw.epilog.sw.bb144_crit_edge, %sw.epilog.sw.bb144_crit_edge412, %sw.epilog.sw.bb144_crit_edge413
  %tx_custom_high_usecs = getelementptr i8, ptr %timer, i32 1560
  br label %sw.epilog148

sw.default145:                                    ; preds = %sw.epilog.sw.default145_crit_edge, %if.then107, %if.then66.sw.default145_crit_edge
  %687 = phi i32 [ %685, %sw.epilog.sw.default145_crit_edge ], [ 27, %if.then66.sw.default145_crit_edge ], [ 2, %if.then107 ]
  %usecs147 = getelementptr [38 x %struct.cec_state], ptr @states, i32 0, i32 %687, i32 1
  br label %sw.epilog148

sw.epilog148:                                     ; preds = %sw.default145, %sw.bb144, %sw.bb143
  %usecs.0.in = phi ptr [ %usecs147, %sw.default145 ], [ %tx_custom_high_usecs, %sw.bb144 ], [ %tx_custom_low_usecs, %sw.bb143 ]
  %688 = ptrtoint ptr %usecs.0.in to i32
  call void @__asan_load4_noabort(i32 %688)
  %usecs.0 = load i32, ptr %usecs.0.in, align 4
  %689 = ptrtoint ptr %monitor_pin_cnt to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load i32, ptr %monitor_pin_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %690)
  %tobool150.not = icmp eq i32 %690, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 151, i32 %usecs.0)
  %cmp152 = icmp ult i32 %usecs.0, 151
  %or.cond = select i1 %tobool150.not, i1 true, i1 %cmp152
  br i1 %or.cond, label %if.then154, label %if.end163

if.then154:                                       ; preds = %sw.epilog148
  call void @__sanitizer_cov_trace_pc() #11
  %691 = ptrtoint ptr %wait_usecs to i32
  call void @__asan_store4_noabort(i32 %691)
  store i32 0, ptr %wait_usecs, align 8
  %conv156 = zext i32 %usecs.0 to i64
  %mul.i353 = mul nuw nsw i64 %conv156, 1000
  %add.i354 = add i64 %mul.i353, %call
  %692 = ptrtoint ptr %timer_ts to i32
  call void @__asan_store8_noabort(i32 %692)
  store i64 %add.i354, ptr %timer_ts, align 8
  %mul159 = mul i32 %usecs.0, 1000
  %conv160 = zext i32 %mul159 to i64
  %base.i355 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %693 = ptrtoint ptr %base.i355 to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %base.i355, align 4
  %get_time.i356 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %694, i32 0, i32 6
  %695 = ptrtoint ptr %get_time.i356 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %get_time.i356, align 4
  %call.i357 = tail call i64 %696() #9
  %call1.i358 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i357, i64 noundef %conv160) #9
  br label %cleanup

if.end163:                                        ; preds = %sw.epilog148
  call void @__sanitizer_cov_trace_pc() #11
  %sub164 = add i32 %usecs.0, -100
  %697 = ptrtoint ptr %wait_usecs to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 %sub164, ptr %wait_usecs, align 8
  %add.i359 = add i64 %call, 100000
  %698 = ptrtoint ptr %timer_ts to i32
  call void @__asan_store8_noabort(i32 %698)
  store i64 %add.i359, ptr %timer_ts, align 8
  %base.i360 = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %699 = ptrtoint ptr %base.i360 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %base.i360, align 4
  %get_time.i361 = getelementptr inbounds %struct.hrtimer_clock_base, ptr %700, i32 0, i32 6
  %701 = ptrtoint ptr %get_time.i361 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %get_time.i361, align 4
  %call.i362 = tail call i64 %702() #9
  %call1.i363 = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i362, i64 noundef 100000) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end163, %if.then154, %if.end138, %if.end50, %if.then40, %if.then30
  %retval.0 = phi i32 [ 1, %if.then30 ], [ 1, %if.then40 ], [ 1, %if.end50 ], [ 1, %if.then154 ], [ 1, %if.end163 ], [ 0, %if.end138 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tx_custom_start(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 30
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %3, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %entry.tx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

entry.tx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -3221225473
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %tx_error_inj.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 16
  %6 = ptrtoint ptr %tx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.i = icmp ne i8 %7, 0
  br label %tx_error_inj.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

tx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %entry.tx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ true, %entry.tx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @cec_pin_to_idle(ptr nocapture noundef %pin) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bit = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 13
  %0 = ptrtoint ptr %tx_bit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tx_bit, align 8
  %rx_bit = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 18
  %1 = ptrtoint ptr %rx_bit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rx_bit, align 8
  %len = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %len, align 8
  %msg = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 17, i32 6
  %3 = call ptr @memset(ptr %msg, i32 0, i32 16)
  %ts = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 5
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %ts, align 8
  %tx_generated_poll = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 53
  %5 = ptrtoint ptr %tx_generated_poll to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %tx_generated_poll, align 2
  %tx_post_eom = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 54
  %6 = ptrtoint ptr %tx_post_eom to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_post_eom, align 1
  %state = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 11
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %9 = add i32 %8, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %9)
  %10 = icmp ult i32 %9, 25
  br i1 %10, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 16
  br label %if.end18.sink.split

if.end:                                           ; preds = %entry
  %11 = add i32 %8, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %11)
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %if.then12, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_toggle = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 19
  br label %if.end18.sink.split

if.end18.sink.split:                              ; preds = %if.then12, %if.end.thread
  %tx_toggle.sink39 = phi ptr [ %tx_toggle, %if.end.thread ], [ %rx_toggle, %if.then12 ]
  %13 = ptrtoint ptr %tx_toggle.sink39 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_toggle.sink39, align 4, !range !138
  %15 = xor i8 %14, 1
  store i8 %15, ptr %tx_toggle.sink39, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end.if.end18_crit_edge
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tx_early_eom(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 18
  %conv.i = and i32 %3, 3
  %4 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %entry.tx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

entry.tx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -786433
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %tx_error_inj.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 16
  %6 = ptrtoint ptr %tx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.i = icmp ne i8 %7, 0
  br label %tx_error_inj.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

tx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %entry.tx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ true, %entry.tx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tx_no_eom(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 16
  %conv.i = and i32 %3, 3
  %4 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %entry.tx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

entry.tx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -196609
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %tx_error_inj.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 16
  %6 = ptrtoint ptr %tx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool19.i = icmp ne i8 %7, 0
  br label %tx_error_inj.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

tx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %entry.tx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ true, %entry.tx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tx_short_bit(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %arrayidx4.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 58, i32 %idxprom.i, i32 3
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv6.i = zext i8 %3 to i32
  %tx_bit.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 13
  %4 = ptrtoint ptr %tx_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bit.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv6.i)
  %cmp7.not.i = icmp eq i32 %5, %conv6.i
  br i1 %cmp7.not.i, label %if.end11.i, label %entry.tx_error_inj.exit_crit_edge

entry.tx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

if.end11.i:                                       ; preds = %entry
  %6 = trunc i64 %1 to i32
  %7 = lshr i32 %6, 20
  %conv.i = and i32 %7, 3
  %8 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end11.i.tx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

if.end11.i.tx_error_inj.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -3145729
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %tx_error_inj.exit

sw.bb18.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 16
  %10 = ptrtoint ptr %tx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.i = icmp ne i8 %11, 0
  br label %tx_error_inj.exit

sw.default.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

tx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %if.end11.i.tx_error_inj.exit_crit_edge, %entry.tx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ false, %entry.tx_error_inj.exit_crit_edge ], [ true, %if.end11.i.tx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tx_long_bit(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %arrayidx4.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 58, i32 %idxprom.i, i32 4
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv6.i = zext i8 %3 to i32
  %tx_bit.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 13
  %4 = ptrtoint ptr %tx_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_bit.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv6.i)
  %cmp7.not.i = icmp eq i32 %5, %conv6.i
  br i1 %cmp7.not.i, label %if.end11.i, label %entry.tx_error_inj.exit_crit_edge

entry.tx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

if.end11.i:                                       ; preds = %entry
  %6 = trunc i64 %1 to i32
  %7 = lshr i32 %6, 22
  %conv.i = and i32 %7, 3
  %8 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end11.i.tx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

if.end11.i.tx_error_inj.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -12582913
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %tx_error_inj.exit

sw.bb18.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 16
  %10 = ptrtoint ptr %tx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.i = icmp ne i8 %11, 0
  br label %tx_error_inj.exit

sw.default.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tx_error_inj.exit

tx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %if.end11.i.tx_error_inj.exit_crit_edge, %entry.tx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ false, %entry.tx_error_inj.exit_crit_edge ], [ true, %if.end11.i.tx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_pin_tx_error_inj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rx_low_drive(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_rx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %arrayidx4.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 58, i32 %idxprom.i, i32 0
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4.i, align 1
  %conv6.i = zext i8 %3 to i32
  %rx_bit.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 18
  %4 = ptrtoint ptr %rx_bit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_bit.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv6.i)
  %cmp7.not.i = icmp eq i32 %5, %conv6.i
  br i1 %cmp7.not.i, label %if.end11.i, label %entry.rx_error_inj.exit_crit_edge

entry.rx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error_inj.exit

if.end11.i:                                       ; preds = %entry
  %6 = trunc i64 %1 to i32
  %7 = lshr i32 %6, 2
  %conv.i = and i32 %7, 3
  %8 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end11.i.rx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

if.end11.i.rx_error_inj.exit_crit_edge:           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error_inj.exit

sw.bb.i:                                          ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -13
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %rx_error_inj.exit

sw.bb18.i:                                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 19
  %10 = ptrtoint ptr %rx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.i = icmp ne i8 %11, 0
  br label %rx_error_inj.exit

sw.default.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error_inj.exit

rx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %if.end11.i.rx_error_inj.exit_crit_edge, %entry.rx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ false, %entry.rx_error_inj.exit_crit_edge ], [ true, %if.end11.i.rx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rx_nack(ptr noundef %pin) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i16 @cec_pin_rx_error_inj(ptr noundef %pin) #9
  %idxprom.i = zext i16 %call.i to i32
  %arrayidx.i = getelementptr %struct.cec_pin, ptr %pin, i32 0, i32 57, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 3
  %3 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %conv.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %entry.rx_error_inj.exit_crit_edge
    i32 3, label %sw.bb18.i
  ]

entry.rx_error_inj.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error_inj.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i = and i64 %1, -4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %and16.i, ptr %arrayidx.i, align 8
  br label %rx_error_inj.exit

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %pin, i32 0, i32 19
  %5 = ptrtoint ptr %rx_toggle.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rx_toggle.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool19.i = icmp ne i8 %6, 0
  br label %rx_error_inj.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_error_inj.exit

rx_error_inj.exit:                                ; preds = %sw.default.i, %sw.bb18.i, %sw.bb.i, %entry.rx_error_inj.exit_crit_edge
  %retval.1.i = phi i1 [ false, %sw.default.i ], [ %tobool19.i, %sw.bb18.i ], [ true, %sw.bb.i ], [ true, %entry.rx_error_inj.exit_crit_edge ]
  ret i1 %retval.1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cec_pin_rx_error_inj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_pin_adap_enable(ptr noundef %adap, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %work_pin_num_events = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  %2 = ptrtoint ptr %work_pin_num_events to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %work_pin_num_events, align 4
  %work_pin_events_wr = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %work_pin_events_wr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %work_pin_events_wr, align 8
  %work_pin_events_rd = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 38
  %4 = ptrtoint ptr %work_pin_events_rd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %work_pin_events_rd, align 4
  %work_pin_events_dropped = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 41
  %5 = ptrtoint ptr %work_pin_events_dropped to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %work_pin_events_dropped, align 8
  %ops.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %9(ptr noundef %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  tail call fastcc void @cec_pin_update(ptr noundef %1, i1 noundef zeroext %tobool.i, i1 noundef zeroext false) #9
  %tx_bit.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %tx_bit.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %tx_bit.i, align 8
  %rx_bit.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %rx_bit.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %rx_bit.i, align 8
  %len.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %len.i, align 8
  %msg.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 17, i32 6
  %15 = call ptr @memset(ptr %msg.i, i32 0, i32 16)
  %ts.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %ts.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %ts.i, align 8
  %tx_generated_poll.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 53
  %17 = ptrtoint ptr %tx_generated_poll.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tx_generated_poll.i, align 2
  %tx_post_eom.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 54
  %18 = ptrtoint ptr %tx_post_eom.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tx_post_eom.i, align 1
  %state.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 4
  %21 = add i32 %20, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %21)
  %22 = icmp ult i32 %21, 25
  br i1 %22, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %tx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 16
  br label %if.end18.sink.split.i

if.end.i:                                         ; preds = %if.then
  %23 = add i32 %20, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %23)
  %24 = icmp ult i32 %23, 10
  br i1 %24, label %if.then12.i, label %if.end.i.cec_pin_to_idle.exit_crit_edge

if.end.i.cec_pin_to_idle.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rx_toggle.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 19
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %if.then12.i, %if.end.thread.i
  %tx_toggle.sink39.i = phi ptr [ %tx_toggle.i, %if.end.thread.i ], [ %rx_toggle.i, %if.then12.i ]
  %25 = ptrtoint ptr %tx_toggle.sink39.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %tx_toggle.sink39.i, align 4, !range !138
  %27 = xor i8 %26, 1
  store i8 %27, ptr %tx_toggle.sink39.i, align 4
  br label %cec_pin_to_idle.exit

cec_pin_to_idle.exit:                             ; preds = %if.end18.sink.split.i, %if.end.i.cec_pin_to_idle.exit_crit_edge
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %state.i, align 4
  %len = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 12, i32 2
  %29 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %len, align 8
  %timer_ts = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 43
  %30 = ptrtoint ptr %timer_ts to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %timer_ts, align 8
  %work_irq_change = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 35
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_irq_change, i32 noundef 4) #9
  %31 = ptrtoint ptr %work_irq_change to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %work_irq_change, align 4
  %call3 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @cec_pin_thread_func, ptr noundef %adap, i32 noundef -1, ptr noundef nonnull @.str.39) #9
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %cec_pin_to_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %kthread37 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 2
  %32 = ptrtoint ptr %kthread37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call3, ptr %kthread37, align 8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #14
  %33 = ptrtoint ptr %kthread37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %kthread37, align 8
  %35 = ptrtoint ptr %34 to i32
  br label %cleanup

if.end14:                                         ; preds = %cec_pin_to_idle.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @wake_up_process(ptr noundef %call3) #9
  %kthread = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 2
  %36 = ptrtoint ptr %kthread to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call3, ptr %kthread, align 8
  %timer = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 4
  tail call void @hrtimer_start_range_ns(ptr noundef %timer, i64 noundef 0, i64 noundef 0, i32 noundef 1) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %kthread16 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %kthread16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %kthread16, align 8
  %call17 = tail call i32 @kthread_stop(ptr noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end14, %do.end
  %retval.0 = phi i32 [ %35, %do.end ], [ 0, %if.else ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cec_pin_adap_monitor_all_enable(ptr nocapture noundef readonly %adap, i1 noundef zeroext %enable) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  %monitor_all = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %monitor_all to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %monitor_all, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cec_pin_adap_log_addr(ptr nocapture noundef readonly %adap, i8 noundef zeroext %log_addr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %log_addr)
  %cmp = icmp eq i8 %log_addr, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %la_mask = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %la_mask to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %la_mask, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %log_addr to i32
  %shl = shl nuw i32 1, %conv
  %la_mask4 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %la_mask4 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %la_mask4, align 4
  %5 = trunc i32 %shl to i16
  %conv6 = or i16 %4, %5
  store i16 %conv6, ptr %la_mask4, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_pin_adap_transmit(ptr nocapture noundef readonly %adap, i8 noundef zeroext %attempts, i32 noundef %signal_free_time, ptr nocapture noundef readonly %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  %state = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  %4 = tail call i32 @llvm.umin.i32(i32 %signal_free_time, i32 5)
  %spec.select = select i1 %cmp.not, i32 %signal_free_time, i32 %4
  %tx_signal_free_time = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 15
  %5 = ptrtoint ptr %tx_signal_free_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %tx_signal_free_time, align 8
  %tx_extra_bytes = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 55
  %6 = ptrtoint ptr %tx_extra_bytes to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %tx_extra_bytes, align 8
  %tx_msg = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 12
  %7 = call ptr @memcpy(ptr %tx_msg, ptr %msg, i32 56)
  %len = getelementptr inbounds %struct.cec_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp ugt i32 %9, 1
  br i1 %cmp3, label %if.then4, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then4:                                         ; preds = %entry
  %call.i.i = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %1) #9
  %idxprom.i.i = zext i16 %call.i.i to i32
  %arrayidx.i.i = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %idxprom.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.i, align 8
  %shr.i.i = lshr i64 %11, 34
  %12 = trunc i64 %shr.i.i to i32
  %conv.i.i = and i32 %12, 3
  %arrayidx4.i.i = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 58, i32 %idxprom.i.i, i32 2
  %13 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4.i.i, align 1
  %15 = zext i32 %conv.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %conv.i.i, label %if.then4.if.end6_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %if.then4.if.then.i_crit_edge
    i32 3, label %tx_error_inj.exit.i
  ]

if.then4.if.then.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

sw.bb.i.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i = and i64 %11, -51539607553
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %and16.i.i, ptr %arrayidx.i.i, align 8
  br label %if.then.i

tx_error_inj.exit.i:                              ; preds = %if.then4
  %tx_toggle.i.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %tx_toggle.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_toggle.i.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.i.not.i = icmp eq i8 %18, 0
  br i1 %tobool19.i.not.i, label %tx_error_inj.exit.i.if.end6_crit_edge, label %tx_error_inj.exit.i.if.then.i_crit_edge

tx_error_inj.exit.i.if.then.i_crit_edge:          ; preds = %tx_error_inj.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

tx_error_inj.exit.i.if.end6_crit_edge:            ; preds = %tx_error_inj.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i:                                        ; preds = %tx_error_inj.exit.i.if.then.i_crit_edge, %sw.bb.i.i, %if.then4.if.then.i_crit_edge
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %tx_error_inj.exit.i.if.end6_crit_edge, %if.then4.if.end6_crit_edge
  %retval.0.i = phi i8 [ %14, %if.then.i ], [ 0, %tx_error_inj.exit.i.if.end6_crit_edge ], [ 0, %if.then4.if.end6_crit_edge ]
  %19 = ptrtoint ptr %tx_extra_bytes to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %retval.0.i, ptr %tx_extra_bytes, align 8
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp8 = icmp ugt i32 %.pr, 2
  br i1 %cmp8, label %land.lhs.true9, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true9:                                   ; preds = %if.end6
  %call.i.i28 = tail call zeroext i16 @cec_pin_tx_error_inj(ptr noundef %1) #9
  %idxprom.i.i29 = zext i16 %call.i.i28 to i32
  %arrayidx.i.i30 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %idxprom.i.i29
  %21 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i30, align 8
  %shr.i.i31 = lshr i64 %22, 36
  %23 = trunc i64 %shr.i.i31 to i32
  %conv.i.i32 = and i32 %23, 3
  %24 = zext i32 %conv.i.i32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %conv.i.i32, label %land.lhs.true9.if.end14_crit_edge [
    i32 1, label %sw.bb.i.i34
    i32 2, label %land.lhs.true9.if.then11_crit_edge
    i32 3, label %tx_remove_byte.exit
  ]

land.lhs.true9.if.then11_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

land.lhs.true9.if.end14_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

sw.bb.i.i34:                                      ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i33 = and i64 %22, -206158430209
  %25 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %and16.i.i33, ptr %arrayidx.i.i30, align 8
  br label %if.then11

tx_remove_byte.exit:                              ; preds = %land.lhs.true9
  %tx_toggle.i.i35 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 16
  %26 = ptrtoint ptr %tx_toggle.i.i35 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_toggle.i.i35, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool19.i.i.not = icmp eq i8 %27, 0
  br i1 %tobool19.i.i.not, label %tx_remove_byte.exit.if.end14_crit_edge, label %tx_remove_byte.exit.if.then11_crit_edge

tx_remove_byte.exit.if.then11_crit_edge:          ; preds = %tx_remove_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

tx_remove_byte.exit.if.end14_crit_edge:           ; preds = %tx_remove_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %tx_remove_byte.exit.if.then11_crit_edge, %sw.bb.i.i34, %land.lhs.true9.if.then11_crit_edge
  %len13 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 12, i32 2
  %28 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len13, align 8
  %dec = add i32 %29, -1
  store i32 %dec, ptr %len13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %tx_remove_byte.exit.if.end14_crit_edge, %land.lhs.true9.if.end14_crit_edge, %if.end6.if.end14_crit_edge, %entry.if.end14_crit_edge
  %work_tx_status = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 33
  %30 = ptrtoint ptr %work_tx_status to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %work_tx_status, align 8
  %tx_bit = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 13
  %31 = ptrtoint ptr %tx_bit to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tx_bit, align 8
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %33)
  %cmp.not.i = icmp eq i32 %33, 37
  br i1 %cmp.not.i, label %if.end.i, label %if.end14.cec_pin_start_timer.exit_crit_edge

if.end14.cec_pin_start_timer.exit_crit_edge:      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_start_timer.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %work_irq_change.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 35
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %work_irq_change.i, i32 noundef 4) #9
  %34 = ptrtoint ptr %work_irq_change.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile i32 1, ptr %work_irq_change.i, align 4
  %kthread_waitq.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %kthread_waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %cec_pin_start_timer.exit

cec_pin_start_timer.exit:                         ; preds = %if.end.i, %if.end14.cec_pin_start_timer.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_pin_adap_status(ptr noundef %adap, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  %state = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %arrayidx = getelementptr [38 x %struct.cec_state], ptr @states, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.43, ptr noundef %5) #9
  %tx_bit = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %tx_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_bit, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.44, i32 noundef %7) #9
  %rx_bit = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %rx_bit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_bit, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, i32 noundef %9) #9
  %ops = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = tail call i32 %13(ptr noundef %adap) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.46, i32 noundef %call) #9
  %work_pin_events_dropped_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 42
  %14 = ptrtoint ptr %work_pin_events_dropped_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %work_pin_events_dropped_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.47, i32 noundef %15) #9
  %enable_irq_failed = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %enable_irq_failed to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable_irq_failed, align 8, !range !138
  %18 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.48, i32 noundef %18) #9
  %timer_100us_overruns = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 45
  %19 = ptrtoint ptr %timer_100us_overruns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timer_100us_overruns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not = icmp eq i32 %20, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %timer_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 44
  %21 = ptrtoint ptr %timer_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timer_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.49, i32 noundef %20, i32 noundef %22) #9
  %timer_300us_overruns = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 46
  %23 = ptrtoint ptr %timer_300us_overruns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %timer_300us_overruns, align 8
  %25 = ptrtoint ptr %timer_cnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timer_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.50, i32 noundef %24, i32 noundef %26) #9
  %timer_max_overrun = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 47
  %27 = ptrtoint ptr %timer_max_overrun to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %timer_max_overrun, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.51, i32 noundef %28) #9
  %timer_sum_overrun = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 48
  %29 = ptrtoint ptr %timer_sum_overrun to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %timer_sum_overrun, align 8
  %31 = ptrtoint ptr %timer_100us_overruns to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %timer_100us_overruns, align 4
  %div = udiv i32 %30, %32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.52, i32 noundef %div) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_start_bit_low_too_short_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 20
  %33 = ptrtoint ptr %rx_start_bit_low_too_short_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_start_bit_low_too_short_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not = icmp eq i32 %34, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %rx_start_bit_low_too_short_delta = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 22
  %35 = ptrtoint ptr %rx_start_bit_low_too_short_delta to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_start_bit_low_too_short_delta, align 8
  %rx_start_bit_low_too_short_ts = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 21
  %37 = ptrtoint ptr %rx_start_bit_low_too_short_ts to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %rx_start_bit_low_too_short_ts, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.53, i32 noundef %34, i32 noundef %36, i64 noundef %38) #9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %rx_start_bit_too_short_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 23
  %39 = ptrtoint ptr %rx_start_bit_too_short_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_start_bit_too_short_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool10.not = icmp eq i32 %40, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %rx_start_bit_too_short_delta = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 25
  %41 = ptrtoint ptr %rx_start_bit_too_short_delta to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_start_bit_too_short_delta, align 8
  %rx_start_bit_too_short_ts = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 24
  %43 = ptrtoint ptr %rx_start_bit_too_short_ts to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rx_start_bit_too_short_ts, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.54, i32 noundef %40, i32 noundef %42, i64 noundef %44) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %rx_start_bit_too_long_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 26
  %45 = ptrtoint ptr %rx_start_bit_too_long_cnt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_start_bit_too_long_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool14.not = icmp eq i32 %46, 0
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.55, i32 noundef %46) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %rx_data_bit_too_short_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 27
  %47 = ptrtoint ptr %rx_data_bit_too_short_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_data_bit_too_short_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool18.not = icmp eq i32 %48, 0
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %rx_data_bit_too_short_delta = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 29
  %49 = ptrtoint ptr %rx_data_bit_too_short_delta to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_data_bit_too_short_delta, align 8
  %rx_data_bit_too_short_ts = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 28
  %51 = ptrtoint ptr %rx_data_bit_too_short_ts to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_data_bit_too_short_ts, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.56, i32 noundef %48, i32 noundef %50, i64 noundef %52) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %rx_data_bit_too_long_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 30
  %53 = ptrtoint ptr %rx_data_bit_too_long_cnt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_data_bit_too_long_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool22.not = icmp eq i32 %54, 0
  br i1 %tobool22.not, label %if.end21.if.end25_crit_edge, label %if.then23

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.57, i32 noundef %54) #9
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end21.if.end25_crit_edge
  %rx_low_drive_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 31
  %55 = ptrtoint ptr %rx_low_drive_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_low_drive_cnt, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.58, i32 noundef %56) #9
  %tx_low_drive_cnt = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 56
  %57 = ptrtoint ptr %tx_low_drive_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_low_drive_cnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.59, i32 noundef %58) #9
  %59 = ptrtoint ptr %work_pin_events_dropped_cnt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %work_pin_events_dropped_cnt, align 4
  %timer_cnt27 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 44
  %60 = ptrtoint ptr %rx_start_bit_low_too_short_cnt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %rx_start_bit_low_too_short_cnt, align 8
  %61 = ptrtoint ptr %rx_start_bit_too_short_cnt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %rx_start_bit_too_short_cnt, align 4
  %62 = ptrtoint ptr %rx_start_bit_too_long_cnt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %rx_start_bit_too_long_cnt, align 4
  %63 = ptrtoint ptr %rx_data_bit_too_short_cnt to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %rx_data_bit_too_short_cnt, align 8
  %64 = ptrtoint ptr %rx_data_bit_too_long_cnt to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %rx_data_bit_too_long_cnt, align 4
  %65 = ptrtoint ptr %rx_low_drive_cnt to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %rx_low_drive_cnt, align 8
  %66 = ptrtoint ptr %tx_low_drive_cnt to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %tx_low_drive_cnt, align 4
  %67 = call ptr @memset(ptr %timer_cnt27, i32 0, i32 20)
  %68 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ops, align 4
  %status = getelementptr inbounds %struct.cec_pin_ops, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %status, align 4
  %tobool40.not = icmp eq ptr %71, null
  br i1 %tobool40.not, label %if.end25.if.end44_crit_edge, label %if.then41

if.end25.if.end44_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then41:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %71(ptr noundef %adap, ptr noundef %file) #9
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end25.if.end44_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_pin_adap_free(ptr noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  %ops = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %free = getelementptr inbounds %struct.cec_pin_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %free, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %5(ptr noundef %adap) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %pin1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pin1, align 8
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_pin_error_inj_show(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cec_pin_error_inj_parse_line(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_pin_received(ptr noundef %adap, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  %ops = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %received = getelementptr inbounds %struct.cec_pin_ops, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %received to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %received, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %5(ptr noundef %adap, ptr noundef %msg) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -42, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_pin_thread_func(ptr noundef %_adap) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pin1 = getelementptr inbounds %struct.cec_adapter, ptr %_adap, i32 0, i32 35
  %0 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pin1, align 8
  %len = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 32, i32 2
  %work_tx_status = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 33
  %work_irq_change = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 35
  %work_pin_num_events = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 36
  %kthread_waitq = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 3
  %work_rx_msg41 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 32
  %rx_toggle.i.i = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 19
  %rx_ts = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 32, i32 1
  %work_tx_ts = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 34
  %work_pin_events_rd = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 38
  %ops108 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 1
  %enable_irq_failed = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 10
  %tx_bit.i223 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 13
  %rx_bit.i224 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 18
  %len.i225 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 17, i32 2
  %msg.i226 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 17, i32 6
  %ts.i227 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 5
  %tx_generated_poll.i228 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 53
  %tx_post_eom.i229 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 54
  %state.i230 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 11
  %tx_toggle.i231 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 16
  %timer113 = getelementptr inbounds %struct.cec_pin, ptr %1, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog.for.cond_crit_edge, %entry
  %irq_enabled.0.off0 = phi i1 [ false, %entry ], [ %irq_enabled.2.off0, %sw.epilog.for.cond_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.42, i32 noundef 1044) #9
  %call = call zeroext i1 @kthread_should_stop() #9
  br i1 %call, label %for.cond.if.end39thread-pre-split_crit_edge, label %lor.lhs.false

for.cond.if.end39thread-pre-split_crit_edge:      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39thread-pre-split

lor.lhs.false:                                    ; preds = %for.cond
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false5, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %work_tx_status to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %work_tx_status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false5.if.then79_crit_edge

lor.lhs.false5.if.then79_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %work_irq_change, i32 noundef 4) #9
  %6 = ptrtoint ptr %work_irq_change to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %work_irq_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false7.if.end39thread-pre-split_crit_edge

lor.lhs.false7.if.end39thread-pre-split_crit_edge: ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39thread-pre-split

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call.i.i204 = call zeroext i1 @__kasan_check_read(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  %8 = ptrtoint ptr %work_pin_num_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %work_pin_num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.then, label %lor.lhs.false10.if.end39thread-pre-split_crit_edge

lor.lhs.false10.if.end39thread-pre-split_crit_edge: ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39thread-pre-split

if.then:                                          ; preds = %lor.lhs.false10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call15273 = call i32 @prepare_to_wait_event(ptr noundef %kthread_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call16274 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call16274, label %if.then.for.end_crit_edge, label %if.then.lor.lhs.false18_crit_edge

if.then.lor.lhs.false18_crit_edge:                ; preds = %if.then
  br label %lor.lhs.false18

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false18:                                  ; preds = %cleanup.lor.lhs.false18_crit_edge, %if.then.lor.lhs.false18_crit_edge
  %call15275 = phi i32 [ %call15, %cleanup.lor.lhs.false18_crit_edge ], [ %call15273, %if.then.lor.lhs.false18_crit_edge ]
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %lor.lhs.false22, label %lor.lhs.false18.for.end_crit_edge

lor.lhs.false18.for.end_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %13 = ptrtoint ptr %work_tx_status to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %work_tx_status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool25.not = icmp eq i8 %14, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %lor.lhs.false22.for.end_crit_edge

lor.lhs.false22.for.end_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false26:                                  ; preds = %lor.lhs.false22
  %call.i.i205 = call zeroext i1 @__kasan_check_read(ptr noundef %work_irq_change, i32 noundef 4) #9
  %15 = ptrtoint ptr %work_irq_change to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %work_irq_change, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not = icmp eq i32 %16, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false26.for.end_crit_edge

lor.lhs.false26.for.end_crit_edge:                ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false30:                                  ; preds = %lor.lhs.false26
  %call.i.i206 = call zeroext i1 @__kasan_check_read(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  %17 = ptrtoint ptr %work_pin_num_events to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %work_pin_num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool33.not = icmp eq i32 %18, 0
  br i1 %tobool33.not, label %if.end, label %lor.lhs.false30.for.end_crit_edge

lor.lhs.false30.for.end_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15275)
  %tobool35.not = icmp eq i32 %call15275, 0
  br i1 %tobool35.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call15 = call i32 @prepare_to_wait_event(ptr noundef %kthread_waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call16 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call16, label %cleanup.for.end_crit_edge, label %cleanup.lor.lhs.false18_crit_edge

cleanup.lor.lhs.false18_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false18

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false30.for.end_crit_edge, %lor.lhs.false26.for.end_crit_edge, %lor.lhs.false22.for.end_crit_edge, %lor.lhs.false18.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %kthread_waitq, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end39thread-pre-split

if.end39thread-pre-split:                         ; preds = %__out, %lor.lhs.false10.if.end39thread-pre-split_crit_edge, %lor.lhs.false7.if.end39thread-pre-split_crit_edge, %for.cond.if.end39thread-pre-split_crit_edge
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr282 = load i32, ptr %len, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end39thread-pre-split, %lor.lhs.false.if.end39_crit_edge
  %20 = phi i32 [ %.pr282, %if.end39thread-pre-split ], [ %3, %lor.lhs.false.if.end39_crit_edge ]
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %20, label %land.lhs.true [
    i32 0, label %if.end39.if.end76_crit_edge
    i32 1, label %if.end39.if.end72_crit_edge
  ]

if.end39.if.end72_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end39.if.end76_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %20)
  %cmp49 = icmp ult i32 %20, 16
  br i1 %cmp49, label %land.lhs.true51, label %land.lhs.true.land.lhs.true61_crit_edge

land.lhs.true.land.lhs.true61_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true61

land.lhs.true51:                                  ; preds = %land.lhs.true
  %call.i.i210 = call zeroext i16 @cec_pin_rx_error_inj(ptr noundef %1) #9
  %idxprom.i.i = zext i16 %call.i.i210 to i32
  %arrayidx.i.i = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %idxprom.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i.i, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 4
  %conv.i.i = and i32 %25, 3
  %26 = zext i32 %conv.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %conv.i.i, label %land.lhs.true51.if.end57_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 2, label %land.lhs.true51.if.then54_crit_edge
    i32 3, label %rx_add_byte.exit
  ]

land.lhs.true51.if.then54_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

land.lhs.true51.if.end57_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

sw.bb.i.i:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i = and i64 %23, -49
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %and16.i.i, ptr %arrayidx.i.i, align 8
  br label %if.then54

rx_add_byte.exit:                                 ; preds = %land.lhs.true51
  %28 = ptrtoint ptr %rx_toggle.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rx_toggle.i.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool19.i.i.not = icmp eq i8 %29, 0
  br i1 %tobool19.i.i.not, label %rx_add_byte.exit.if.end57_crit_edge, label %rx_add_byte.exit.if.then54_crit_edge

rx_add_byte.exit.if.then54_crit_edge:             ; preds = %rx_add_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then54

rx_add_byte.exit.if.end57_crit_edge:              ; preds = %rx_add_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then54:                                        ; preds = %rx_add_byte.exit.if.then54_crit_edge, %sw.bb.i.i, %land.lhs.true51.if.then54_crit_edge
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 8
  %inc = add i32 %31, 1
  store i32 %inc, ptr %len, align 8
  %arrayidx = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 32, i32 6, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 85, ptr %arrayidx, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %rx_add_byte.exit.if.end57_crit_edge, %land.lhs.true51.if.end57_crit_edge
  %33 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp59 = icmp ugt i32 %.pr, 2
  br i1 %cmp59, label %if.end57.land.lhs.true61_crit_edge, label %if.end57.if.end72_crit_edge

if.end57.if.end72_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end57.land.lhs.true61_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.end57.land.lhs.true61_crit_edge, %land.lhs.true.land.lhs.true61_crit_edge
  %call.i.i211 = call zeroext i16 @cec_pin_rx_error_inj(ptr noundef %1) #9
  %idxprom.i.i212 = zext i16 %call.i.i211 to i32
  %arrayidx.i.i213 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 57, i32 %idxprom.i.i212
  %34 = ptrtoint ptr %arrayidx.i.i213 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i.i213, align 8
  %36 = trunc i64 %35 to i32
  %37 = lshr i32 %36, 6
  %conv.i.i214 = and i32 %37, 3
  %38 = zext i32 %conv.i.i214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %conv.i.i214, label %land.lhs.true61.if.end66thread-pre-split_crit_edge [
    i32 1, label %sw.bb.i.i216
    i32 2, label %land.lhs.true61.if.then64_crit_edge
    i32 3, label %rx_remove_byte.exit
  ]

land.lhs.true61.if.then64_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

land.lhs.true61.if.end66thread-pre-split_crit_edge: ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66thread-pre-split

sw.bb.i.i216:                                     ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #11
  %and16.i.i215 = and i64 %35, -193
  %39 = ptrtoint ptr %arrayidx.i.i213 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %and16.i.i215, ptr %arrayidx.i.i213, align 8
  br label %if.then64

rx_remove_byte.exit:                              ; preds = %land.lhs.true61
  %40 = ptrtoint ptr %rx_toggle.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rx_toggle.i.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool19.i.i218.not = icmp eq i8 %41, 0
  br i1 %tobool19.i.i218.not, label %rx_remove_byte.exit.if.end66thread-pre-split_crit_edge, label %rx_remove_byte.exit.if.then64_crit_edge

rx_remove_byte.exit.if.then64_crit_edge:          ; preds = %rx_remove_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then64

rx_remove_byte.exit.if.end66thread-pre-split_crit_edge: ; preds = %rx_remove_byte.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66thread-pre-split

if.then64:                                        ; preds = %rx_remove_byte.exit.if.then64_crit_edge, %sw.bb.i.i216, %land.lhs.true61.if.then64_crit_edge
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 8
  %dec = add i32 %43, -1
  store i32 %dec, ptr %len, align 8
  br label %if.end66

if.end66thread-pre-split:                         ; preds = %rx_remove_byte.exit.if.end66thread-pre-split_crit_edge, %land.lhs.true61.if.end66thread-pre-split_crit_edge
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr270 = load i32, ptr %len, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end66thread-pre-split, %if.then64
  %45 = phi i32 [ %.pr270, %if.end66thread-pre-split ], [ %dec, %if.then64 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %45)
  %cmp68 = icmp ugt i32 %45, 16
  br i1 %cmp68, label %if.then70, label %if.end66.if.end72_crit_edge

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %len, align 8
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66.if.end72_crit_edge, %if.end57.if.end72_crit_edge, %if.end39.if.end72_crit_edge
  %47 = ptrtoint ptr %rx_ts to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %rx_ts, align 8
  call void @cec_received_msg_ts(ptr noundef %_adap, ptr noundef %work_rx_msg41, i64 noundef %48) #9
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %len, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.end72, %if.end39.if.end76_crit_edge
  %50 = ptrtoint ptr %work_tx_status to i32
  call void @__asan_load1_noabort(i32 %50)
  %.pr283 = load i8, ptr %work_tx_status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr283)
  %tobool78.not = icmp eq i8 %.pr283, 0
  br i1 %tobool78.not, label %if.end76.if.end84_crit_edge, label %if.end76.if.then79_crit_edge

if.end76.if.then79_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then79

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then79:                                        ; preds = %if.end76.if.then79_crit_edge, %lor.lhs.false5.if.then79_crit_edge
  %51 = phi i8 [ %.pr283, %if.end76.if.then79_crit_edge ], [ %5, %lor.lhs.false5.if.then79_crit_edge ]
  %52 = ptrtoint ptr %work_tx_status to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %work_tx_status, align 8
  %53 = ptrtoint ptr %work_tx_ts to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %work_tx_ts, align 8
  call void @cec_transmit_attempt_done_ts(ptr noundef %_adap, i8 noundef zeroext %51, i64 noundef %54) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.end76.if.end84_crit_edge
  %call.i.i207280 = call zeroext i1 @__kasan_check_read(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  %55 = ptrtoint ptr %work_pin_num_events to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %work_pin_num_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool87.not281 = icmp eq i32 %56, 0
  br i1 %tobool87.not281, label %if.end84.while.end_crit_edge, label %if.end84.while.body_crit_edge

if.end84.while.body_crit_edge:                    ; preds = %if.end84
  br label %while.body

if.end84.while.end_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end84.while.body_crit_edge
  %57 = ptrtoint ptr %work_pin_events_rd to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %work_pin_events_rd, align 4
  %arrayidx88 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 40, i32 %58
  %59 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %60 to i32
  %and = and i32 %conv89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool90 = icmp ne i32 %and, 0
  %and92 = and i32 %conv89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93 = icmp ne i32 %and92, 0
  %arrayidx94 = getelementptr %struct.cec_pin, ptr %1, i32 0, i32 39, i32 %58
  %61 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx94, align 8
  call void @cec_queue_pin_cec_event(ptr noundef %_adap, i1 noundef zeroext %tobool90, i1 noundef zeroext %tobool93, i64 noundef %62) #9
  %add = add i32 %58, 1
  %rem = and i32 %add, 127
  %63 = ptrtoint ptr %work_pin_events_rd to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %rem, ptr %work_pin_events_rd, align 4
  %call.i.i208 = call zeroext i1 @__kasan_check_write(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %work_pin_num_events, i32 1, i32 3, i32 1) #9
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %work_pin_num_events, ptr %work_pin_num_events, i32 1, ptr elementtype(i32) %work_pin_num_events) #9, !srcloc !142
  %call.i.i207 = call zeroext i1 @__kasan_check_read(ptr noundef %work_pin_num_events, i32 noundef 4) #9
  %65 = ptrtoint ptr %work_pin_num_events to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %work_pin_num_events, align 4
  %tobool87.not = icmp eq i32 %66, 0
  br i1 %tobool87.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end84.while.end_crit_edge
  %call.i.i209 = call zeroext i1 @__kasan_check_write(ptr noundef %work_irq_change, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  call void @llvm.prefetch.p0(ptr %work_irq_change, i32 1, i32 3, i32 1) #9
  %67 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %work_irq_change) #9, !srcloc !144
  %asmresult.i.i = extractvalue { i32, i32 } %67, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  %68 = zext i32 %asmresult.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %asmresult.i.i, label %while.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb104
  ]

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  br i1 %irq_enabled.0.off0, label %if.then100, label %sw.bb.if.end101_crit_edge

sw.bb.if.end101_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then100:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops108, align 4
  %disable_irq = getelementptr inbounds %struct.cec_pin_ops, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disable_irq, align 4
  call void %72(ptr noundef %_adap) #9
  br label %if.end101

if.end101:                                        ; preds = %if.then100, %sw.bb.if.end101_crit_edge
  %73 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops108, align 4
  %high.i = getelementptr inbounds %struct.cec_pin_ops, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %high.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %high.i, align 4
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  call void %76(ptr noundef %78) #9
  %79 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops108, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 8
  %call.i.i222 = call i32 %82(ptr noundef %84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i222)
  %tobool.i.i = icmp ne i32 %call.i.i222, 0
  call fastcc void @cec_pin_update(ptr noundef %1, i1 noundef zeroext %tobool.i.i, i1 noundef zeroext false) #9
  %85 = ptrtoint ptr %tx_bit.i223 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tx_bit.i223, align 8
  %86 = ptrtoint ptr %rx_bit.i224 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %rx_bit.i224, align 8
  %87 = ptrtoint ptr %len.i225 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %len.i225, align 8
  %88 = call ptr @memset(ptr %msg.i226, i32 0, i32 16)
  %89 = ptrtoint ptr %ts.i227 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %ts.i227, align 8
  %90 = ptrtoint ptr %tx_generated_poll.i228 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %tx_generated_poll.i228, align 2
  %91 = ptrtoint ptr %tx_post_eom.i229 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %tx_post_eom.i229, align 1
  %92 = ptrtoint ptr %state.i230 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state.i230, align 4
  %94 = add i32 %93, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %94)
  %95 = icmp ult i32 %94, 25
  br i1 %95, label %if.end101.sw.epilog.sink.split.sink.split_crit_edge, label %if.end.i

if.end101.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.sink.split

if.end.i:                                         ; preds = %if.end101
  %96 = add i32 %93, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %96)
  %97 = icmp ult i32 %96, 10
  br i1 %97, label %if.end.i.sw.epilog.sink.split.sink.split_crit_edge, label %if.end.i.sw.epilog.sink.split_crit_edge

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end.i.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.sink.split

sw.bb104:                                         ; preds = %while.end
  br i1 %irq_enabled.0.off0, label %sw.bb104.sw.epilog_crit_edge, label %if.end107

sw.bb104.sw.epilog_crit_edge:                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end107:                                        ; preds = %sw.bb104
  %98 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops108, align 4
  %enable_irq = getelementptr inbounds %struct.cec_pin_ops, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %enable_irq, align 4
  %call109 = call zeroext i1 %101(ptr noundef %_adap) #9
  %lnot = xor i1 %call109, true
  %frombool = zext i1 %lnot to i8
  %102 = ptrtoint ptr %enable_irq_failed to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %frombool, ptr %enable_irq_failed, align 8
  br i1 %call109, label %if.end107.sw.epilog_crit_edge, label %if.then112

if.end107.sw.epilog_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then112:                                       ; preds = %if.end107
  %103 = ptrtoint ptr %tx_bit.i223 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %tx_bit.i223, align 8
  %104 = ptrtoint ptr %rx_bit.i224 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %rx_bit.i224, align 8
  %105 = ptrtoint ptr %len.i225 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %len.i225, align 8
  %106 = call ptr @memset(ptr %msg.i226, i32 0, i32 16)
  %107 = ptrtoint ptr %ts.i227 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 0, ptr %ts.i227, align 8
  %108 = ptrtoint ptr %tx_generated_poll.i228 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %tx_generated_poll.i228, align 2
  %109 = ptrtoint ptr %tx_post_eom.i229 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %tx_post_eom.i229, align 1
  %110 = ptrtoint ptr %state.i230 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state.i230, align 4
  %112 = add i32 %111, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %112)
  %113 = icmp ult i32 %112, 25
  br i1 %113, label %if.then112.sw.epilog.sink.split.sink.split_crit_edge, label %if.end.i233

if.then112.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.sink.split

if.end.i233:                                      ; preds = %if.then112
  %114 = add i32 %111, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %114)
  %115 = icmp ult i32 %114, 10
  br i1 %115, label %if.end.i233.sw.epilog.sink.split.sink.split_crit_edge, label %if.end.i233.sw.epilog.sink.split_crit_edge

if.end.i233.sw.epilog.sink.split_crit_edge:       ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end.i233.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %if.end.i233
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %if.end.i233.sw.epilog.sink.split.sink.split_crit_edge, %if.then112.sw.epilog.sink.split.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split.sink.split_crit_edge, %if.end101.sw.epilog.sink.split.sink.split_crit_edge
  %tx_toggle.sink39.i236.sink286 = phi ptr [ %tx_toggle.i231, %if.end101.sw.epilog.sink.split.sink.split_crit_edge ], [ %rx_toggle.i.i, %if.end.i.sw.epilog.sink.split.sink.split_crit_edge ], [ %tx_toggle.i231, %if.then112.sw.epilog.sink.split.sink.split_crit_edge ], [ %rx_toggle.i.i, %if.end.i233.sw.epilog.sink.split.sink.split_crit_edge ]
  %116 = ptrtoint ptr %tx_toggle.sink39.i236.sink286 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tx_toggle.sink39.i236.sink286, align 4, !range !138
  %118 = xor i8 %117, 1
  store i8 %118, ptr %tx_toggle.sink39.i236.sink286, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %if.end.i233.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge
  %119 = ptrtoint ptr %state.i230 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %state.i230, align 4
  call void @hrtimer_start_range_ns(ptr noundef %timer113, i64 noundef 0, i64 noundef 0, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end107.sw.epilog_crit_edge, %sw.bb104.sw.epilog_crit_edge, %while.end.sw.epilog_crit_edge
  %irq_enabled.2.off0 = phi i1 [ %irq_enabled.0.off0, %while.end.sw.epilog_crit_edge ], [ true, %sw.bb104.sw.epilog_crit_edge ], [ true, %if.end107.sw.epilog_crit_edge ], [ false, %sw.epilog.sink.split ]
  %call116 = call zeroext i1 @kthread_should_stop() #9
  br i1 %call116, label %for.end119, label %sw.epilog.for.cond_crit_edge

sw.epilog.for.cond_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end119:                                       ; preds = %sw.epilog
  %120 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ops108, align 4
  %disable_irq121 = getelementptr inbounds %struct.cec_pin_ops, ptr %121, i32 0, i32 4
  %122 = ptrtoint ptr %disable_irq121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %disable_irq121, align 4
  %tobool122.not = icmp eq ptr %123, null
  %irq_enabled.2.off0.not = xor i1 %irq_enabled.2.off0, true
  %brmerge = select i1 %tobool122.not, i1 true, i1 %irq_enabled.2.off0.not
  br i1 %brmerge, label %for.end119.if.end129_crit_edge, label %if.then126

for.end119.if.end129_crit_edge:                   ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end129

if.then126:                                       ; preds = %for.end119
  call void @__sanitizer_cov_trace_pc() #11
  call void %123(ptr noundef %_adap) #9
  br label %if.end129

if.end129:                                        ; preds = %if.then126, %for.end119.if.end129_crit_edge
  %call131 = call i32 @hrtimer_cancel(ptr noundef %timer113) #9
  %124 = ptrtoint ptr %ops108 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ops108, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  %call.i = call i32 %127(ptr noundef %129) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  call fastcc void @cec_pin_update(ptr noundef %1, i1 noundef zeroext %tobool.i, i1 noundef zeroext false) #9
  %130 = ptrtoint ptr %tx_bit.i223 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %tx_bit.i223, align 8
  %131 = ptrtoint ptr %rx_bit.i224 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %rx_bit.i224, align 8
  %132 = ptrtoint ptr %len.i225 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %len.i225, align 8
  %133 = call ptr @memset(ptr %msg.i226, i32 0, i32 16)
  %134 = ptrtoint ptr %ts.i227 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %ts.i227, align 8
  %135 = ptrtoint ptr %tx_generated_poll.i228 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %tx_generated_poll.i228, align 2
  %136 = ptrtoint ptr %tx_post_eom.i229 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %tx_post_eom.i229, align 1
  %137 = ptrtoint ptr %state.i230 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %state.i230, align 4
  %139 = add i32 %138, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %139)
  %140 = icmp ult i32 %139, 25
  br i1 %140, label %if.end129.if.end18.sink.split.i254_crit_edge, label %if.end.i250

if.end129.if.end18.sink.split.i254_crit_edge:     ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i254

if.end.i250:                                      ; preds = %if.end129
  %141 = add i32 %138, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %141)
  %142 = icmp ult i32 %141, 10
  br i1 %142, label %if.end.i250.if.end18.sink.split.i254_crit_edge, label %if.end.i250.cec_pin_to_idle.exit255_crit_edge

if.end.i250.cec_pin_to_idle.exit255_crit_edge:    ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %cec_pin_to_idle.exit255

if.end.i250.if.end18.sink.split.i254_crit_edge:   ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.sink.split.i254

if.end18.sink.split.i254:                         ; preds = %if.end.i250.if.end18.sink.split.i254_crit_edge, %if.end129.if.end18.sink.split.i254_crit_edge
  %tx_toggle.sink39.i253 = phi ptr [ %tx_toggle.i231, %if.end129.if.end18.sink.split.i254_crit_edge ], [ %rx_toggle.i.i, %if.end.i250.if.end18.sink.split.i254_crit_edge ]
  %143 = ptrtoint ptr %tx_toggle.sink39.i253 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %tx_toggle.sink39.i253, align 4, !range !138
  %145 = xor i8 %144, 1
  store i8 %145, ptr %tx_toggle.sink39.i253, align 4
  br label %cec_pin_to_idle.exit255

cec_pin_to_idle.exit255:                          ; preds = %if.end18.sink.split.i254, %if.end.i250.cec_pin_to_idle.exit255_crit_edge
  %146 = ptrtoint ptr %state.i230 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %state.i230, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_received_msg_ts(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_transmit_attempt_done_ts(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_queue_pin_cec_event(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__ksymtab_cec_pin_changed, !1, !"__ksymtab_cec_pin_changed", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1304, i32 1}
!2 = !{ptr @cec_pin_allocate_adapter.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1331, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_cec_pin_allocate_adapter, !6, !"__ksymtab_cec_pin_allocate_adapter", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1349, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/cec/core/cec-pin.c", i32 71, i32 4}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/cec/core/cec-pin.c", i32 72, i32 4}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/cec/core/cec-pin.c", i32 73, i32 4}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/cec/core/cec-pin.c", i32 74, i32 4}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/cec/core/cec-pin.c", i32 75, i32 4}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/cec/core/cec-pin.c", i32 76, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/cec/core/cec-pin.c", i32 77, i32 4}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/cec/core/cec-pin.c", i32 78, i32 4}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/cec/core/cec-pin.c", i32 79, i32 4}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/cec/core/cec-pin.c", i32 80, i32 4}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/cec/core/cec-pin.c", i32 81, i32 4}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/cec/core/cec-pin.c", i32 82, i32 4}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/cec/core/cec-pin.c", i32 83, i32 4}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/cec/core/cec-pin.c", i32 84, i32 4}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/cec/core/cec-pin.c", i32 85, i32 4}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/cec/core/cec-pin.c", i32 86, i32 4}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/cec/core/cec-pin.c", i32 87, i32 4}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/cec/core/cec-pin.c", i32 88, i32 4}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/cec/core/cec-pin.c", i32 89, i32 4}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/cec/core/cec-pin.c", i32 90, i32 4}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/cec/core/cec-pin.c", i32 91, i32 4}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/cec/core/cec-pin.c", i32 92, i32 4}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/cec/core/cec-pin.c", i32 93, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/cec/core/cec-pin.c", i32 94, i32 4}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/cec/core/cec-pin.c", i32 95, i32 4}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/cec/core/cec-pin.c", i32 96, i32 4}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/cec/core/cec-pin.c", i32 97, i32 4}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/cec/core/cec-pin.c", i32 98, i32 4}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/cec/core/cec-pin.c", i32 99, i32 4}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/cec/core/cec-pin.c", i32 100, i32 4}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/cec/core/cec-pin.c", i32 101, i32 4}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/cec/core/cec-pin.c", i32 102, i32 4}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/cec/core/cec-pin.c", i32 103, i32 4}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/cec/core/cec-pin.c", i32 104, i32 4}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/cec/core/cec-pin.c", i32 105, i32 4}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/cec/core/cec-pin.c", i32 106, i32 4}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/cec/core/cec-pin.c", i32 107, i32 4}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/cec/core/cec-pin.c", i32 108, i32 4}
!83 = !{ptr @states, !84, !"states", i1 false, i1 false}
!84 = !{!"../drivers/media/cec/core/cec-pin.c", i32 70, i32 31}
!85 = !{ptr @cec_pin_adap_ops, !86, !"cec_pin_adap_ops", i1 false, i1 false}
!86 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1306, i32 34}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1137, i32 18}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1140, i32 4}
!91 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cec_pin_adap_enable._entry, !90, !"_entry", i1 false, i1 false}
!94 = !{ptr @cec_pin_adap_enable._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1207, i32 19}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1208, i32 19}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1209, i32 19}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1210, i32 19}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1211, i32 19}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1213, i32 19}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1215, i32 20}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1217, i32 20}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1219, i32 20}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1221, i32 20}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1226, i32 7}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1232, i32 7}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1237, i32 20}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1241, i32 7}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1246, i32 20}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1248, i32 19}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/cec/core/cec-pin.c", i32 1249, i32 19}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i8 0, i8 2}
!139 = !{i64 2148224714, i64 2148224740, i64 2148224769, i64 2148224803, i64 2148224834, i64 2148224857}
!140 = !{i64 510324, i64 510351, i64 510373, i64 510401}
!141 = !{i64 510732, i64 510759, i64 510792, i64 510813, i64 510840, i64 510866}
!142 = !{i64 2148227179, i64 2148227205, i64 2148227234, i64 2148227268, i64 2148227299, i64 2148227322}
!143 = !{i64 2148484554}
!144 = !{i64 731482, i64 731499, i64 731523, i64 731549, i64 731567}
!145 = !{i64 2148484924}
